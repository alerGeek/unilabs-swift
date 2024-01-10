<!-- TOC -->
* [Description](#description)
* [Requirements](#requirements)
* [How to run an application](#how-to-run-an-application)
* [How to develop (write and debug) a Swift application on Linux/Windows](#how-to-develop-write-and-debug-a-swift-application-on-linuxwindows)
* Tasks descriptions: (open locally in IDE)
  * [Lab 1 tasks](./_doc/lab1.md)
  * [Lab 2 tasks](./_doc/lab2.md)
  * [Lab 3 tasks](./_doc/lab3.md)
  * [Lab 4 tasks](./_doc/lab4.md)
<!-- TOC -->

# Description
 Project has been created as solution for university classes. It contains of tasks for learning basics of Swift language.
 Project can be run on all Operation Systems, including:
 - macOS,
 - Linux,
 - Windows.

On Linux and Windows, it is recommended to run within Docker image. More description in chapter 'How to run'.

# Requirements
- any OS (macOs, Linux, Windows),
- Docker
- Visual Studio Code (recommended for Debugging and developing)

# How to run an application
In order to compile and run the app, run following command in chosen terminal (bash/wsl/powershell):
```shell
docker compose run app
```
or
```shell
docker compose run --build app
```

# How to develop (write and debug) a Swift application on Linux/Windows
In order to develop swift application, it is recommended to use Visual Studio Code with active plugin `Dev Containers` 
1. Open VSC.
2. Run task: Rebuild and reopen in container.
3. Develop/Debug your application.

The remote container of Visual Studio Code application will be created with:
- installed extension Swift for swift syntax
- installed extension CodeLLDB for debugging swift projects
- configured lldb library path
