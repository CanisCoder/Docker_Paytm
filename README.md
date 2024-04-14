# Deploying Microservices Architecture

This repository contains instructions and configurations for deploying a microservices architecture using Docker, Jenkins, and GitHub.

## Overview

The deployment process involves creating three servers with t2.medium instance types and installing Docker on all of them. The code will be pulled from a centralized repository on GitHub and integrated using Jenkins as a master/manager node. A cluster will be formed consisting of Jenkins/master node and two worker nodes.

## Prerequisites

Before starting, ensure the following:

- Three servers with t2.medium instance types are provisioned.
- Docker is installed on all servers.
- Jenkins is installed and configured as a master/manager node.

## Instructions

1. **Pull Code from GitHub to Jenkins**:
   - Set up Jenkins to pull code from the GitHub repository.
   - Configure Jenkins jobs to integrate the code.

2. **Create Cluster**:
   - Configure Jenkins as the master node.
   - Set up two worker nodes to join the Jenkins cluster.

3. **Create Custom Images and Push to DockerHub**:
   - Build custom Docker images for your microservices.
   - Push the images to DockerHub with appropriate tags.

4. **Set Permissions**:
   - Ensure proper permissions are set for Docker.
     ```bash
     chmod 777 /var/run/docker.sock
     systemctl daemon-reload
     systemctl restart docker.service
     ```

5. **Write Compose File and Push to GitHub**:
   - Create a `docker-compose.yml` file defining the services.
   - Push the `docker-compose.yml` file to your GitHub repository.

6. **Build and Deploy Containers**:
   - Use Jenkins or the manager node to build Docker images.
   - Deploy the containers on the worker nodes using the Docker images.

## Usage

Follow these steps to deploy the microservices architecture:

1. Pull the latest code from the GitHub repository.
2. Set up the cluster configuration.
3. Build custom Docker images and push them to DockerHub.
4. Ensure proper permissions are set for Docker.
5. Write the `docker-compose.yml` file and push it to GitHub.
6. Build the Docker images and deploy the containers on the worker nodes.

## Contributors

- [Your Name](https://github.com/CanisCoder)

## License

This project is licensed under the [MIT License](LICENSE).
