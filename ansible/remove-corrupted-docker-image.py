#!/usr/bin/env python3
import json
import os
import sys
import shutil
from datetime import datetime

BASE = "/var/lib/docker/image/btrfs"
REPO = os.path.join(BASE, "repositories.json")
CONTENT = os.path.join(BASE, "imagedb", "content", "sha256")
DIST = os.path.join(BASE, "distribution")


def remove_repositories_entries(image_id):
    if not os.path.exists(REPO):
        print(f"[WARN] repositories.json not found at {REPO}")
        return

    # Backup repositories.json
    backup = f"{REPO}.bak.{datetime.now().strftime('%Y%m%d-%H%M%S')}"
    shutil.copy2(REPO, backup)
    print(f"[OK] Backup created: {backup}")

    with open(REPO, "r") as f:
        data = json.load(f)

    # Remove references to the image ID
    removed = False
    for repo, tags in list(data.get("Repositories", {}).items()):
        for tag, digest in list(tags.items()):
            if digest == f"sha256:{image_id}":
                print(f"[OK] Removing reference: {repo}:{tag}")
                del data["Repositories"][repo][tag]
                removed = True

        # Remove empty repo entries
        if repo in data["Repositories"] and not data["Repositories"][repo]:
            del data["Repositories"][repo]

    if removed:
        with open(REPO, "w") as f:
            json.dump(data, f, indent=2)
        print("[OK] repositories.json updated")
    else:
        print("[INFO] No references found in repositories.json")


def remove_config_json(image_id):
    cfg_path = os.path.join(CONTENT, image_id)
    if os.path.exists(cfg_path):
        os.remove(cfg_path)
        print(f"[OK] Deleted config JSON: {cfg_path}")
    else:
        print("[INFO] No config JSON found")


def remove_distribution_metadata(image_id):
    dist_path = os.path.join(DIST, f"sha256:{image_id}")
    if os.path.exists(dist_path):
        shutil.rmtree(dist_path)
        print(f"[OK] Deleted distribution metadata: {dist_path}")
    else:
        print("[INFO] No distribution metadata found")


def main():
    if len(sys.argv) != 2:
        print("Usage: remove-corrupted-docker-image.py <image-id>")
        sys.exit(1)

    image_id = sys.argv[1].strip()

    print(f"Cleaning corrupted Docker metadata for image ID: {image_id}\n")

    remove_repositories_entries(image_id)
    remove_config_json(image_id)
    remove_distribution_metadata(image_id)

    print("\nDone. Docker will now forget this image.")


if __name__ == "__main__":
    main()
