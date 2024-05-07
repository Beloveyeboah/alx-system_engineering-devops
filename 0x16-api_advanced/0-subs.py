#!/usr/bin/python3
""" sending a query to Reddit API"""

import json
import requests

def number_of_subscribers(subreddit):
    """ make a request Reddit Api """

    user = {"User-Agent": "beloveyeboah"}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    req = requests.get(url, headers=user)
    response = req.json()
    try:
        return results.get('data').get('subscribers')

    except Exception:
        return 0
