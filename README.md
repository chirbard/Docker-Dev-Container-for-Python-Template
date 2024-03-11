# Docker Dev Container for Python template

Requirements:
    Docker


## Usage
### Building in VSCode
Make sure the `Dev Container` extension is installed.

link: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

Now open command pallete and choose `Dev Containers: Reopen in container`

### Building and Entering from Terminal
```
PS C:\Users\ns> cd py-test
PS C:\Users\ns\py-test> docker build -t test .
...
PS C:\Users\ns\py-test> docker run -it test bash
```

### Running Inside the Container 
```shell
root@861135bd16c3:/code# make run
python src/main.py
hello
```

### Removing the Image After Use
listing images
```
PS C:\Users\ns> docker images
REPOSITORY  TAG        IMAGE ID       CREATED         SIZE
test        latest     45770c96f941   3 minutes ago   156MB
...

PS C:\Users\ns> docker rmi <IMAGE ID/REPOSITORY>
```
