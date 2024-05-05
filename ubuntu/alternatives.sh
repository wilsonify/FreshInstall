#!/bin/bash

handle_error() {
  local message="$1"
  echo "handle errors"
  echo "Error: $message" >&2
  exit 1
}

remove_alternatives() {
  local name="$1"
  echo "remove existing alternatives for $name"
  if ! sudo update-alternatives --remove-all "$name"; then
    handle_error "Failed to remove existing alternatives for $name"
  fi
}

install_alternatives() {
  local name="$1"
  local target="$2"
  local priority="$3"
  echo "install new alternative for $name"
  if ! sudo update-alternatives --install "/usr/bin/$name" "$name" "$target" "$priority"; then
    handle_error "Failed to install alternative for $name"
  fi
}

main() {
  # List of commands to update alternatives
  local commands=(
    "aws /opt/aws/aws-cli/v2.13.11/aws 100"
    "bazel /opt/bazel/bazelisk 100"
    "code /opt/vscode/v1.84.0/bin/code 100"
    "firefox /opt/firefox/firefox 100"
    "goofys /opt/goofys/v0.24.0/goofys 100"
    "hugo /opt/hugo/hugo 100"
    "idea /opt/idea/2023.3/bin/idea.sh 100"
    "julia /opt/julia/v1.5.4/bin/julia 100"
    "pnpm /opt/pnpm/bin/pnpm-linux-x64 100"
    "pycharm /opt/pycharm-community/2023.2.1/bin/pycharm.sh 100"
    "rclone /opt/rclone/v1.65.2/rclone 100"
    "saml2aws /opt/saml2aws/2.36.12/saml2aws 100"
    "terraform /opt/terraform/v1.5.7/terraform 100"
    "terraformer /opt/terraformer/v0.8.24/terraformer 100"
    "vscode /opt/vscode/bin/code 100"
  )

  echo "start updating alternatives"
  # Loop through each command and update alternatives
  for command in "${commands[@]}"; do
    read -r name target priority <<<"$command"
    remove_alternatives "$name"
    install_alternatives "$name" "$target" "$priority"
  done
  echo "All alternatives updated successfully."
}

# Call the main function
main
