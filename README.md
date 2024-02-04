# docker-hw02

Flask is a popular framework for creating dynamic webpages in python. The startup Runnable.com helps people deploy these webpages using docker. They have a tutorial on developing dockerized flask apps at: https://runnable.com/docker/python/dockerize-your-flask-application. For this homework, you will follow the tutorial and upload your completed app to github.

Hint 1:

The link above is now broken. The company runnable.com has run out of business, and their website no longer works. In order to view the instructions for the homework, you will have to use the Wayback Machine to get access to an archived version. Most startups fail, and so it is common to use the wayback machine to reference documentation that has gone offline.

Hint 2:

These instructions were not designed for this class, and you will therefore have to modify parts of the instructions in order to get them to work. This is intentional in order to get you more practice adapting tutorials into different computational environments. There are two main modifications you'll have to make:

In the docker run command, you will have to change the port that docker exposes to a port other than 5000.

In order to view your webpage from your laptop, you will have to connect to the lambda server with local port forwarding enabled.

Hint 3:

Finally, there's a handful of errors that you'll get when you build the project. You'll find that fixing these errors only takes a very small change to the project files, but figuring out exactly what this change is can quite difficult. You should very carefully read the contents of your error messages, and perform good "sanity checks" between each step to ensure that you are progressing properly.

It is very common for realworld tutorials to not work exactly as written. I've selected this tutorial specifically because it has these problems, and they are relatively minor. It will give you good practice for when you encounter harder problems later.

To access the server: ssh <USERNAME>@lambda.compute.cmc.edu -p 5055 -L localhost:<$UID>:10.253.1.15:<$UID>
cd docker-hw02/
docker build -t flask-tutorial .
docker run -d -p <$UID>:<$UID> flask-tutorial
docker images
docker ps # add -a if want to see closed containers (good for debugging)
docker log <CONTAINER_ID> (good for debugging and finding build errors)
