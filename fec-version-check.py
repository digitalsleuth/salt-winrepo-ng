#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup

current_version = None

url = "https://fec.metaspike.com/announcements"
with open('forensic-email-collector.sls', 'r', encoding='utf-8') as state_file:
    for line in state_file.readlines():
        if "# current" in line:
            current_version = line.split(' ')[-1].rstrip()
            break

response = requests.get(url, timeout=10)
if response.status_code == 200:
    soup = BeautifulSoup(response.text, 'html.parser')
    articles = soup.find_all("article")
    for article in articles:
        label_div = article.find("div", string=lambda s: s and s.strip() == "FEC Release")
        if not label_div:
            continue
        version_tag = article.find("a")
        if version_tag:
            h1 = version_tag.find("h1")
            if h1:
                posted_version = h1.text.strip()
                if posted_version != current_version:
                    print(f"New FEC version released: {posted_version}")
                    raise SystemExit(1)
                print("No FEC version update found.")
                raise SystemExit(0)
    print("No FEC release announcement found.")
else:
    print(f"Failed to retrieve the webpage - Response code: {response.status_code}")
