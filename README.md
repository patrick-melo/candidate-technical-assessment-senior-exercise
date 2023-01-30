# Introduction
The movie API allows users to search movies by character. Movies can be searched by unique id or by character name.

## Quickstart
Run the following commands to make/run/init this project. This will start the service.

    bin/g.sh make
    bin/g.sh run                # leave this running
    bin/g.sh initdb
    bin/g.sh boot               # leave this running


# Usage
This service allows for two operations: searching for a person by their unique id, and by their name. Partial name search works, so if the person's full name is "Bruce Wayne:, it is possible to search on "bru", "Bruce", "Wayne", and "Bruce Wayne"

## How to search by id
To search by id, append the id to the URL.

    % curl -i -X GET "http://localhost:8080/3"
    HTTP/1.1 200 
    Content-Type: application/json
    Transfer-Encoding: chunked
    Date: Sun, 29 Jan 2023 21:48:26 GMT

    {"id":3,"name":"Bruce Wayne","movie":"Batman & Robin (1997"}
    %

## How to search by name
To search by name, pass the name parameter.

    % curl -i -X GET "http://localhost:8080/?name=bru"
    HTTP/1.1 200 
    Content-Type: application/json
    Transfer-Encoding: chunked
    Date: Sun, 29 Jan 2023 21:50:14 GMT

    [{"id":1,"name":"Bruce Wayne","movie":"Batman: The Killing Joke (2016)"},{"id":2,"name":"Bruce Wayne","movie":"Batman v Superman: Dawn of Justice (2016)"},{"id":3,"name":"Bruce Wayne","movie":"Batman & Robin (1997)"},{"id":4,"name":"Bruce Wayne","movie":"Justice League (the Whedon cut, 2017)"},{"id":5,"name":"Bruce Wayne","movie":"Batman (1966)"},{"id":6,"name":"Bruce Wayne","movie":"Justice League (the Snyder cut, 2021)"},{"id":7,"name":"Bruce Wayne","movie":"Batman: Mask of the Phantasm (1993)"},{"id":8,"name":"Bruce Wayne","movie":"Batman Forever (1995)"},{"id":9,"name":"Bruce Wayne","movie":"Batman (1989)"},{"id":10,"name":"Bruce Wayne","movie":"The Lego Batman Movie (2017)"},{"id":11,"name":"Bruce Wayne","movie":"Batman Returns (1992)"},{"id":12,"name":"Bruce Wayne","movie":"The Dark Knight Rises (2012)"},{"id":13,"name":"Bruce Wayne","movie":"The Batman (2022)"},{"id":14,"name":"Bruce Wayne","movie":"Batman Begins (2005)"},{"id":15,"name":"Bruce Wayne","movie":"The Dark Knight (2008)"}]
    %

## How to run unit tests
The project also includes unit tests. These tests can be run using the `g test` command.

    bin/g.sh test

# Development 
This project runs under Docker and has two containers: one for the microserivce, and one for the database.

## G script
I've included a script to help with various functions like building and running the service.

You can run the script by calling it from the bin directory.

    bin/g.sh

You can also run the script by creating an alias. I'm running the newer zsh so I put the alias in ~/.zshrc. This is useful is you are doing a lot of work with the script since you'll be able to call the g.sh script from any directory in the system.

    alias g="~/repos/candidate-technical-assessment-senior-exercise/bin/g.sh"

If you add the alias to ~/.zshrc then you will need to either start a new shell or use the source command sp that thchanges take effect.

    source ~/.zshrc

## How to open a shell within the Docker container
If you're making any changes, you may need to start a shell inside the docker container. You can use the `g sh` command.

    bin/g.sh sh

# Implementation
This service is built with Java 18.0.2.1 and Spring 3.0.2.

I used Initializr to build the dependencies for the project. If you need to make changes, simply edit the parameters in the g script and re-run `g init`.

## How this repo was created
1. This repo was forked from [gagggle-net/candidate-technical-assessment-senior-exercise](https://github.com/gaggle-net/candidate-technical-assessment-senior-exercise).

2. I used [Spring Initializr](https://start.spring.io/) to create the skeleton. Creating an Initializr zip can be done through the UI. I did it programatically. You can repeat the step using the `g init` command.

    bin/g.sh init

## Files
Some of the files in this repo were automatically generated with Initializr. Here is a description of the others:

    /
    |- bin                                  - Automation script
    |- database/migrations                  - SQL commands
    |- movie                                - Initializr files
    |  `- src                               - Source files
    |     |- main/java/com/gaggle/movie     - Movie Source
    |     |  |- Person.java                 - Entity class
    |     |  |- PersonController.java       - Controller class
    |     |  |- PersonRepository.java       - Repository class
    |     |  |- PersonService.java          - Service class
    |     |  `- RestServiceApplication.java - Sprint application
    |     `- test/java/com/gaggle/movie     - Unit tests
    |        `- PersonControllerTests.java  - Controller unit tests
    |- .gitignore                           - List of files for git to ignore
    |- Dockerfile                           - Docker config for web container
    |- Gaggle.md                            - Renamed README.md from Gaggle
    |- Initializr.md                        - Copy-pasta of Initializr instructions
    |- README.md                            - This file
    |- docker-compose.yml                   - Docker config for web and db instances
    |
    `- mysql                                - Persistent storage for db


# Known issues
The following is a list of known issues with this project:

* Deprecated docker iamge. The [OpenJDK docker image](https://hub.docker.com/_/openjdk) has a deprecation notice. We will need to switch to a different image but those that I tried had trouble with the version numbers so that will need to be resolved first.
