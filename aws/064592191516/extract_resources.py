"""
This script does the following:

    Reads the Terraform configuration file named "terraform.tf."
    Splits the configuration into individual resource blocks using a regular expression that matches two newline characters followed by a closing curly brace }\n\n.
    Creates a separate .tf file for each resource block, naming them as "resource_1.tf," "resource_2.tf," and so on.

Make sure to replace "terraform.tf" with the actual name of your Terraform configuration file. After running this script, you'll have separate .tf files for each resource block from your original Terraform configuration.
"""
import glob
import os
import re


def read_terraform_configuration(f):
    with open(f, 'r') as f:
        terraform_config = f.read()
    return terraform_config


def split_configuration_resource_blocks(terraform_config):
    resource_blocks = re.split(r'(?<=\})\n\n', terraform_config)
    return resource_blocks


def write_tf_file(config, filepath):
    with open(filepath, 'w') as f:
        f.write(config)


def get_name_from_resource(resource_block):
    # Extract the resource type from the resource block
    resource_type_pattern = re.compile(r'^\s*resource\s+"([^"]+)"\s+{\s*', re.MULTILINE)
    match = resource_type_pattern.search(resource_block)
    resource_type = match.group(1) if match else f'unknown_resource'
    return resource_type


def create_separate_files(resource_blocks, dest):
    for i, resource_block in enumerate(resource_blocks):
        j = i + 1
        name = get_name_from_resource(resource_block)
        write_tf_file(resource_block, f'{dest}/{j:2.0f}_{name}.tf')


def main():
    for f in glob.glob("/home/thom/repos/FreshInstall/aws/064592191516/generated/**/*.tf", recursive=True):
        f_head, f_tail = os.path.split(f)
        content = read_terraform_configuration(f)
        resource_list = split_configuration_resource_blocks(content)
        create_separate_files(resource_list, f_head)


if __name__ == "__main__":
    main()
