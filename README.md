# Simple Load Balancer using Docker.

The concept of load balancing is very integral in system designs and bothers on scalability. 
Scalability is the process of making your services more available to higher number of requests/users.

### Vertical Scaling

This is giving more resources to a server instance, e.g adding more computation resources to a server (ram and space).

### Horizontal scaling

This is adding more server instances rather than adding more compute power to one server. 
So instead of serving requests with one power server, you are serving it with 2 or more servers behind a "load balancer".

## Our Implementation

We are using docker to spin up the containers we are using to setup this simple load balancing implementation.

Nginx is a tool that can act as a web server and a reverse proxy hence, we are using it as both. 
Our load balancer is an instance of nginx which is configured to be a reverse proxy, and other instances of nginx too is used as web servers.

We use PHP as the web programming language of choice for this implementation

### House Keeping

Add your application codes inside the `./app` folder

Copy the .env.example file to .env and populate the keys with appropriate values that match your setup.

You can use the make commands to run commands easily, and can also add more commands to it.
