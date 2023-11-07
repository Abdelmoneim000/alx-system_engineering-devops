#!/usr/bin/python3
"""A script that gets the top 10 hot posts for a subreddit"""
import requests


def top_ten(subreddit):
    """function send a request to reddit API"""
    url = f'https://api.reddit.com/r/{subreddit}/hot/.json'
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    params = {
        'limit': 10
    }
    req = requests.get(url, headers=headers, params=params,
                       allow_redirects=False)
    if req.status_code == 404:
        print("None")
        return
    else:
        res = req.json()['data']['children']
        for child in res:
            print("{}".format(child['data']['title']))
