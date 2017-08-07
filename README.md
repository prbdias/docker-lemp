# Docker LEMP Stack

### Install

Before you start make sure you have the [Docker Toolbox](https://www.docker.com/products/docker-toolbox) and [Docker Compose](https://docs.docker.com/compose/install/) installed on your machine.

### Config
Before you start your application make sure you have created the file **.env** with the PATH to the app. Please take a look into the example on the file **.env.example**

### Run
To start you application you just need to run the following commands: 
    $ git clone http://git.denied.network/socialleague/docker-lemp.git
    $ docker-compose up -d --build
    
### Test

Run the following command to obtain the Docker Machine IP 
    $ docker-machine ip
    
Take the Docker Machine IP and open the following url http://{DOCKER-MACHINE-IP}/ and you will see a phpinfo page.
