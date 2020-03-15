# What is it?

This project is a react docker environment. The following tools aready installed (last release version): 
* nodejs 
* curl 
* yarn

# Why should you use it?

First of all, it is helpful to run react and installs dependencies avoiding conflicts with other react projects. The second reason, it is to make your local machine clean

# How to use it?

After you clone this project, follow the steps:
- open a terminal session in your terminal tool (Iterm, Terminal, Putty)
- go to folder where you've clone the project (Ex.: ```cd docker-compose-for-react```)
- type the command: ```make run```

This command will run the container and open a session inside the container. If all goes well, you will be in the path ```/usr/src/app```.   In this path, you can run commands like ```yarn create react-app foo```

##### IMPORTANT!
when you run ```make run```at the first time, the docker image will be created. In the next times, docker compose will use the image.

# Extra tools

* If you want to up yarn server, open new terminal session, go to the folder where you've cloned de project and type the command ```make server```

# FAQ

=> **I already have a react project. How can I use this docker container?**
**A:** Pretty simple. Clone this docker container project and copy the files Dockerfile, docker-compose, entrypoint, Makefile, and paste them inside your react root path.  After that, type the command: ```make run```.

=> **I'm having problems to up the container or run rails project. What can I do ?**
**A:** create a [github issue](https://github.com/pierreabreup/docker-compose-for-react/issues) . I promise will answer as soon as possible
