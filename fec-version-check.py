#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup

current_version = None

url = "https://fec.metaspike.com/announcements"
with open('forensic-email-collector.sls', 'r') as state_file:
    for line in state_file.readlines():
        if "# current" in line:
            current_version = line.split(' ')[-1].rstrip()
            break

response = requests.get(url)
if response.status_code == 200:
    html_content = response.text
    soup = BeautifulSoup(html_content, 'html.parser')
    link = soup.find('a', href=lambda href: href and href.startswith('/announcements/'))
    if link:
        h1 = link.find_next('h1')
        if h1:
            posted_version = h1.text.strip()
            if posted_version != current_version:
                print(f"New version released: {posted_version}")
                raise SystemExit(1)
            else:
                print("No version update found.")
                raise SystemExit(0)
    else:
        print("No version information found for FEC.")
else:
    print(f"Failed to retrieve the webpage - Response code: {response.status_code}")
