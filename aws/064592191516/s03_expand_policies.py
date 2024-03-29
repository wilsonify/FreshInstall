"""
This script does the following:
    Reads the Terraform configuration file named "terraform.tf."
    Splits the configuration into individual resource blocks using a regular expression that matches two newline characters followed by a closing curly brace \n\n.
    looks for <<POLICY .* POLICY tags
    Creates a separate .json file for each policy block, naming them as "1_resource-policy.json"
"""
import glob
import os


def read_terraform_configuration(f):
    print(f"read terraform configuration {f}")
    with open(f, 'r') as f:
        terraform_config = f.read()
    return terraform_config


def split_policy_blocks(terraform_config):
    resource_blocks = {}
    current_resource_block = []
    policies_dict = {}
    name = ""
    is_policy = False
    for i, line in enumerate(terraform_config.split("\n")):
        # Check if a resource block is starting
        if line.strip().startswith("resource "):
            current_resource_block = [line]
            name = get_name_from_resource(line)
        else:
            current_resource_block.append(line)
            if name:
                resource_blocks[name] = current_resource_block

        if "<<POLICY" in line.strip():
            print(f"found POLICY in name={name}")
            policies_dict[f"{name}-policy"] = []
            is_policy = True
        elif is_policy:
            policies_dict[f"{name}-policy"].append(line)
        elif line.strip().startswith("POLICY"):
            is_policy = False

    return policies_dict


def write_json_file(config_lines, filepath):
    print(f"filepath = {filepath}")
    with open(filepath, 'w') as f:
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
        write_json_file(lines, f'{dest}/{j:2.0f}-{name}-policy.json')


def main():
    for f in glob.glob("/home/thom/repos/FreshInstall/aws/064592191516/extract/**/*.tf", recursive=True):
        f_head, f_tail = os.path.split(f)
        destination = f_head.replace("extract", "expand")
        content = read_terraform_configuration(f)
        resource_list = split_policy_blocks(content)
        create_separate_files(resource_list, destination)


if __name__ == "__main__":
    main()
