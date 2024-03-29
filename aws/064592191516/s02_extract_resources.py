"""
This script does the following:

    Reads the Terraform configuration file named "terraform.tf."
    Splits the configuration into individual resource blocks using a regular expression that matches two newline characters followed by a closing curly brace \n\n.
    Creates a separate .tf file for each resource block, naming them as "resource_1.tf," "resource_2.tf," and so on.

Make sure to replace "terraform.tf" with the actual name of your Terraform configuration file.
After running this script, you'll have separate .tf files for each resource block from your original Terraform configuration.
"""
import glob
import os
from os.path import dirname, abspath


def read_terraform_configuration(f):
    print(f"read terraform configuration {f}")
    with open(f, 'r') as f:
        terraform_config = f.read()
    return terraform_config


def split_configuration_resource_blocks(terraform_config):
    resource_blocks = {}
    current_resource_block = []
    name = ""
    for i, line in enumerate(terraform_config.split("\n")):
        # Check if a resource block is starting
        if line.strip().startswith("resource "):
            current_resource_block = [line]
            name = get_name_from_resource(line)
        else:
            current_resource_block.append(line)
            if name:
                resource_blocks[name] = current_resource_block

    return resource_blocks


def write_tf_file(config_lines, filepath):
    with open(filepath, 'a') as f:
        for line in config_lines:
            f.write(line)
            f.write("\n")


def get_name_from_resource(resource_block):
    for line in resource_block.split("\n"):
        if line.strip().startswith("resource "):
            name = line.replace("resource ", "")
            name = name.replace(r'"', "")
            name = name.replace(" ", "-")
            name = name.replace('_', "-")
            name = name.replace("{", "")
            name = name.replace('-tfer-', "-")
            name = name.replace("aws-", "-")
            name = name.replace("-064592191516-", "-")
            name = name.replace('--', "-")
            name = name.strip("-")
            return name


def create_separate_files(resource_blocks, dest):
    os.makedirs(dest, exist_ok=True)
    for j, (name, lines) in enumerate(resource_blocks.items()):
        write_tf_file(lines, f'{dest}/{j:2.0f}-{name}.tf')


def main():
    path_to_here = abspath(dirname(__file__))
    for f in glob.glob(f"{path_to_here}/export/**/*.tf", recursive=True):
        f_head, f_tail = os.path.split(f)
        destination = f_head.replace("export", "extract")
        content = read_terraform_configuration(f)
        resource_list = split_configuration_resource_blocks(content)
        create_separate_files(resource_list, destination)


if __name__ == "__main__":
    main()
