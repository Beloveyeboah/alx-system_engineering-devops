#!/usr/bin/python3

"""a function that queries the Reddit API and
returns the number of subscribers
"""

import requests


def number_of_subscribers(subreddit):
    """function that queries the Reddit
    API and returns the number of subscribers
    """

    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "Beloveyeboah"}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        sub_count = data['data']['subscribers']
        return sub_count
    else:
        return 0
