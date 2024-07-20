# Linode IaaS with Terraform

## Introduction

This project demonstrates how to deploy Infrastructure as a Service (IaaS) on Linode using Terraform. Linode is known for its affordability compared to other cloud providers, making it an excellent choice for cost-conscious developers. This project will guide you through setting up and managing Linode instances using Terraform, showcasing the ease and efficiency of infrastructure automation.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Features](#features)
- [Dependencies](#dependencies)
- [Contributors](#contributors)
- [License](#license)

## Installation

Before setting up the project, ensure Terraform is installed on your local machine. Below are the installation steps for different operating systems:

### macOS
```sh
brew install terraform
```

### Linux
Follow the [official guide](https://learn.hashicorp.com/tutorials/terraform/install-cli) for your specific distribution.

### Windows
Download the appropriate binary from the [Terraform website](https://www.terraform.io/downloads.html) and follow the installation instructions.

### Linode CLI
Install the Linode CLI using pip:
```sh
pip install linode-cli
```
or
```sh
pip3 install linode-cli --upgrade
```

## Configuration

1. **Generate Linode API Token**: Generate a token from your Linode account with sufficient permissions to run the entire project.

2. **Duplicate .bak Files**: There are several files with a `.bak` extension that you need to duplicate and adjust the values accordingly.

    - `ssh_key.pub.bak` -> `ssh_key.pub`
    - `terraform.tfvars.bak` -> `terraform.tfvars`

    In the `terraform.tfvars` file, replace `"your_linode_token"` with your actual Linode API token.

3. **Adjustable Values**: You can modify certain values in the `.tf` files to suit your needs:
    - Node labels (e.g., `arp_k8s_worker_1`, `arp_k8s_controlplane_1`)
    - Tags (e.g., `deployed by: arp-terraform`)
    - VPC and Subnet names (e.g., `ARP-kubeadm-network-01`, `kubeadm-lab`)
    - Instance types and regions

4. **Linode Plan IDs**: To get a reference of Linode plan IDs, run the following command:
    ```sh
    linode-cli linodes types
    ```

## Usage

1. **Clone the Repository**: Clone the project repository from GitHub.
    ```sh
    git clone https://github.com/agylpradipta/terraform-linode-instance-vpc.git
    ```

2. **Initialize Terraform**: Initialize the Terraform working directory.
    ```sh
    terraform init
    ```

3. **Plan**: Create an execution plan to check the resources that Terraform will create.
    ```sh
    terraform plan
    ```

4. **Apply**: Apply the changes required to reach the desired state of the configuration.
    ```sh
    terraform apply
    ```

## Features

- **Automated Deployment**: Automates the deployment of Linode instances using Terraform.
- **Secure Configuration**: Uses random passwords and SSH keys for secure access.
- **Scalable Infrastructure**: Easily scalable by modifying the instance configurations in the Terraform files.

## Dependencies

- [Terraform](https://www.terraform.io/)
- [Linode CLI](https://www.linode.com/docs/guides/linode-cli/)
- Linode API Token

## Contributors

- Agyl Pradipta - [GitHub Profile](https://github.com/agylpradipta)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

This updated README includes the additional information about running the `linode-cli linodes types` command, your GitHub profile link, and the repository clone URL. If you need further modifications, please let me know!