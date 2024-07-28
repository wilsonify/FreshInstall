

docker run -d -v /var/run/docker.sock:/var/run/docker.sock --user 1000:996 -v $PWD:/data --rm code.forgejo.org/forgejo/runner:3.3.0 forgejo-runner --config config.yml daemon