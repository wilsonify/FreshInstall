import csv

import requests


def list_github_repos(username):
    url = f"https://api.github.com/users/{username}/repos"
    params = {'per_page': 100, 'page': 1}  # Set per_page to 100 to reduce the number of requests
    all_repos = []

    while True:
        response = requests.get(url, params=params)
        response.raise_for_status()  # Raise an exception for HTTP errors
        repos = response.json()

        if not repos:
            break  # Exit the loop if no more repositories are returned

        all_repos.extend(repos)
        params['page'] += 1  # Increment the page number to fetch the next page

    # Write repository details to a CSV file
    with open('github_repos.csv', mode='w', newline='', encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        # Write the header row
        writer.writerow(['Count', 'ID', 'Name', 'Description', 'Clone URL'])

        # Write repository details
        for count, repo in enumerate(all_repos, start=1):
            writer.writerow([count, repo['id'], repo['name'], repo['description'], repo['clone_url']])

    print("Repository details have been written to github_repos.csv")


# Replace 'your-username' with your actual GitHub username
list_github_repos('wilsonify')
