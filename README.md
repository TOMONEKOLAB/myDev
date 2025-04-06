# My Dev

## Description

This repository is a Docker environment for personal development.

### AtCoder  
This Container is Docker Container for AtCoder.  
It supports C, C++, and Python,
and includes online-judge-tools and atcoder-cli.
### C_C++
This Container is Docker Container for C and C++.  
It supports C, C++, and includes noVNC.
### Cuda  
This Container is Docker Container for Cuda.  
It supports Cuda, and includes noVNC.
### Java  
This Container is Docker Container for Java.  
It supports Java, and includes noVNC.
### JavaScript  
This Container is Docker Container for JavaScript.  
It supports JavaScript, and includes noVNC.
### Python  
This Container is Docker Container for Python.  
It supports Python, and includes noVNC.
### Share  
This directory is Shared folder between containers.  
Inside the container, this directory will appear as "share".
### myUtil  
This directory is Util folder between containers.  
Inside the container, this directory will appear as "myUtil".  
Only myUtil in supported languages ​​will be bound.  

 - __Ex1__ : If C_C++ Container
    ```
    myUtil(In the Host : myUtil)
    ├───c
    |   └───{your util file name}
    └───c++
        └───{your util file name}
    ```

 - __Ex2__ : If Python Container
    ```
    myUtil(In the Host : myUtil/py)
    ├───{your util directory name}
    |    ├───{your util file name}
    |    ├───{your util file name}
    |    :
    |    ├───{your util file name}
    |    └───{your util file name}
    ├───{your util file name}
    ├───{your util file name}
    ├───{your util file name}
    :
    ```

## Clone

If you clone this repository, Please execute one of the following commands:

### If you don't need myUtil
 1. Clone this repository with below command.
    ```
    git clone https://github.com/TOMONEKOLAB/myDev.git
    ```
 2. Create directories like below directory structure.
    ```
    myUtil
    ├───c
    ├───c++
    ├───java
    ├───js
    └───py
    ```
### If you need myUtil
 1. Clone this repository with below command
    ```
    git clone --recursive https://github.com/TOMONEKOLAB/myDev.git
    ```

__Info : If you don't need ".gitkeep", you can remove it.__

## How to start or end noVNC

### If you want to start noVNC, Please input below command in the container.
```
st
```
After that, you can watch and use the screen via Web browser or VSCode.  

### If you want to end noVNC, Please input below command in the container.

```
fin
```
