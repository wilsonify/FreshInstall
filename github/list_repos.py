import csv
import math

import requests


def get_total_public_repo_count(username):
    response = requests.get(f"https://api.github.com/users/{username}")
    response.raise_for_status()
    user_data = response.json()
    total_public_repos = user_data.get('public_repos', 0)
    return total_public_repos


def write_list_to_csv(list_to_write, dest_file_name):
    # Write repository details to a CSV file
    with open(dest_file_name, mode='w', newline='', encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        # Write the header row
        writer.writerow(['Count', 'ID', 'Name', 'Description', 'Clone URL'])

        # Write repository details
        for count, repo in enumerate(list_to_write, start=1):
            writer.writerow([count, repo['id'], repo['name'], repo['description'], repo['clone_url']])


def list_github_repos(username):
    all_repos = []
    page_count = math.ceil(get_total_public_repo_count(username) / 100)
    for page in range(1, page_count + 1):
        response = requests.get(
            url=f"https://api.github.com/users/{username}/repos",
            params={'per_page': 100, 'page': page}
        )
        response.raise_for_status()  # Raise an exception for HTTP errors
        repos = response.json()
        all_repos.extend(repos)

    write_list_to_csv(
        list_to_write=all_repos,
        dest_file_name='github_repos.csv'
    )

    print("Repository details have been written to github_repos.csv")


# Replace 'your-username' with your actual GitHub username
list_github_repos('wilsonify')
