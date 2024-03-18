# Flowbite Rails DevContainers

## Overview

Flowbite Rails project supports DevContainers, making it easier for developers to set up and work on the project with a consistent development environment. DevContainers provide a pre-configured development environment that can be used for tasks like coding, debugging, and testing within a containerized environment.

## Purpose

The purpose of integrating DevContainers into Flowbite Rails is to streamline the development setup process, ensuring that all developers have a consistent environment with the necessary tools and dependencies required to work on the project. This helps reduce setup time and minimizes potential issues related to varying development environments.

## Installation and Usage

To use Flowbite Rails DevContainers, follow these steps:

1. Prerequisites:
   * [Docker](https://docs.docker.com/get-docker/)
   * [Visual Studio Code](https://code.visualstudio.com/)
1. Clone the Flowbite Rails Repository:
   ```shell
   git clone https://github.com/iwdt/Flowbite Rails.git
   ```
1. Open the Project in Visual Studio Code:
   * Open Visual Studio Code.
   * Navigate to File > Open Folder and select the Flowbite Rails project folder.
1. Install the [Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers):
   * In Visual Studio Code, go to the Extensions view by clicking the Extensions icon in the sidebar.
   * Search for "Dev Containers" and install the extension provided by Microsoft.
1. Open in DevContainer:
   * Click on the green icon in the lower-left corner of Visual Studio Code to open the Command Palette.
   * Search for "Dev Containers: Open Folder in Container..." and select it.
   * Visual Studio Code will build the DevContainer based on the Dockerfile provided and open the project within the containerized environment.
1. Start Developing:
   * You are now inside a DevContainer with all the necessary tools and dependencies pre-installed.
   * You can edit code, run tasks, and work on the project just like you would in a local development environment.

That's it! You're now set up to work with Flowbite Rails using DevContainers, ensuring a consistent development environment across your team. Happy coding!

## Additional Links

* [Docker Documentation](https://docs.docker.com/)
* [Visual Studio Code Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers)
* [Dev Containers specification Reference](https://containers.dev/)
