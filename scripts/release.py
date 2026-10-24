#!/usr/bin/env python3
"""Create the GitHub release for the current version as a draft, attach assets, then publish it.

Immutable releases lock their assets on publish, so assets must be attached to the draft first.
Run after `cz bump`. Requires $GH_TOKEN with contents: write.
"""
import argparse
import json
import os
import re
import sys
import tomllib
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DIST_DIR = ROOT / "dist"
REPO = "etoome/All-in-one"
API = f"https://api.github.com/repos/{REPO}"


def read_version() -> str:
    with (ROOT / "pyproject.toml").open("rb") as file:
        return tomllib.load(file)["project"]["version"]


def changelog_notes(version: str) -> str:
    text = (ROOT / "CHANGELOG.md").read_text(encoding="utf-8")
    match = re.search(rf"^## v?{re.escape(version)} .*?\n(.*?)(?=^## |\Z)", text, re.M | re.S)
    return match.group(1).strip() if match else ""


def request(method: str, url: str, token: str, body: bytes | None = None, content_type: str = "application/json") -> dict:
    req = urllib.request.Request(url, data=body, method=method, headers={
        "Authorization": f"Bearer {token}",
        "Accept": "application/vnd.github+json",
        "X-GitHub-Api-Version": "2022-11-28",
        "Content-Type": content_type,
    })
    try:
        with urllib.request.urlopen(req) as response:
            return json.load(response)
    except urllib.error.HTTPError as error:
        sys.exit(f"{method} {url} failed: {error.code} {error.read().decode(errors='replace')}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--version", help="release version (default: pyproject.toml)")
    args = parser.parse_args()

    token = os.environ.get("GH_TOKEN")
    if not token:
        sys.exit("GH_TOKEN is not set")

    version = args.version or read_version()
    tag = f"v{version}"
    assets = [
        DIST_DIR / "Install.ps1",
        DIST_DIR / f"All-in-one-v{version}.ppam",
        DIST_DIR / "update.txt",
    ]
    missing = [str(path) for path in assets if not path.is_file()]
    if missing:
        sys.exit(f"Missing release assets (run scripts/build.py): {', '.join(missing)}")

    release = request("POST", f"{API}/releases", token, json.dumps({
        "tag_name": tag,
        "name": tag,
        "body": changelog_notes(version),
        "draft": True,
    }).encode())
    print(f"Created draft release {tag}")

    upload_url = release["upload_url"].split("{")[0]
    for path in assets:
        query = urllib.parse.urlencode({"name": path.name})
        request("POST", f"{upload_url}?{query}", token, path.read_bytes(), "application/octet-stream")
        print(f"Uploaded {path.name}")

    # A failed upload exits above, leaving the draft in place to retry or delete.
    input(f"Review the draft at {release['html_url']}, then press Enter to publish (Ctrl+C to keep the draft)...")
    request("PATCH", f"{API}/releases/{release['id']}", token, json.dumps({"draft": False}).encode())
    print(f"Published {release['html_url']}")


if __name__ == "__main__":
    main()
