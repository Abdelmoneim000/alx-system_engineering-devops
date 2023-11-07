#!/usr/bin/python3
"""script to get subscribers"""
import requests
import json


def number_of_subscribers(subreddit):
    """get subscribers of a given subreddit"""

    if subreddit is None:
        return 0

    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    r = requests.get(url, headers=headers)

    try:
        data = r.json()
        if r.status_code == 200:
            subscribers = data["data"]["subscribers"]
            return subscribers
        else:
            return 0
    except json.JSONDecodeError:
        return 0
