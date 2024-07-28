wget -O forgejo-runner https://code.forgejo.org/forgejo/runner/releases/download/v3.4.1/forgejo-runner-3.4.1-linux-amd64
chmod +x forgejo-runner
wget -O forgejo-runner.asc https://code.forgejo.org/forgejo/runner/releases/download/v3.4.1/forgejo-runner-3.4.1-linux-amd64.asc
gpg --keyserver keys.openpgp.org --recv EB114F5E6C0DC2BCDD183550A4B61A2DC5923710
gpg --verify forgejo-runner.asc forgejo-runner
