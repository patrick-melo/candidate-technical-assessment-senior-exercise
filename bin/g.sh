#!/bin/bash
################################################################################
#
#+ G(1)                          Gaggle Scripts                             G(1)
#+ 
#+ NNAAMMEE
#+       g - administer gaggle with impunity
#+
#+ SSYYNNOOPPSSIISS
#+       g [command] [OPTION]...
#+
#+ DDEESSCCRRIIPPTTIIOONN
#+       G is a script to with the administration of Gaggle software.
#+
#+ AARRGGUUMMEENNTTSS
#+       If no commands are provided then the usage is displayed. This script
#+       accepts the following commands:
#+

error() { echo $@ ; exit 1 ; }
usage() { echo "Usage: $@" ; exit 1; }

#+       boot
#+              Run spring boot
#+
cmd_boot() { cmd_shell "./mvnw spring-boot:run" ; }

#+       debug
#+              Run subsequent commands with debug (eg `g debug boot`)
#+
cmd_debug() { sh -x $THIS "$@"; }

#+       deploy
#+              Deploy this application to the cloud
#+
cmd_deploy() { echo "unimplemented"; }

#+       help
#+              View the help documentation.
#+
cmd_help() { grep -h "^#+" $THIS | cut -c4- | less -is ;}

#+       init
#+              Create an Initializr zip for this project
#+
cmd_init() {
    cd $THIS_DIR
    
    # backup customizations
    mv movie/src ./src
    mv movie/application.properties ./application.properties

    # remove previous install
    rm -f movie.zip
    rm -fr movie
    
    # download initializr
    curl -G https://start.spring.io/starter.zip \
        -d applicationName=RestServiceApplication \
        -d artifactId=movie1 \
        -d description=Movie%20service \
        -d packageName=com.gaggle.movie \
        -d dependencies=web,data-jpa,mysql \
        -d javaVersion=17 \
        -d name=movie2 \
        -d type=maven-build \
        -d version=1.0.0 \
        -o movie.zip
    
    # install initializr
    unzip -o movie.zip -d movie

    # restore customizations
    rm -fr movie/src
    mv ./src movie/src
    mv ./application.properties movie/application.properties
}

cmd_initdb(){
    cmd_shell "mysql -h db -u root -psupersecretpassword -D gaggle < /usr/src/database/migrations/2022_01_26_000000_create_movies_table.sql"
}

cmd_loop() {
    while [ 1 ]; do clear ; sh $THIS "$@" ; cmd_pause ; done
}

#+       make
#+              Build the application
#+
cmd_make() { 
    cd $THIS_DIR
    docker build -t $APP .
}

#+       mysql
#+              Open a mysql client instance
#+
cmd_mysql() {
    cmd_shell "mysql -h db -u root -psupersecretpassword"
}

cmd_pause() {
    echo "Press any key to continue . . ." ; read response ;
}

#+       sh
#+              Open a shell inside the docker container
#+
cmd_sh() {
    service=$1
    [ -z "$service" ] && service=web
    project=candidate-technical-assessment-senior-exercise

    docker exec -it $(docker ps --format "table {{.ID}}\t{{.Names}}"| awk '$2 ~ /^'${project}-${service}'-1/ {print $1}') /bin/bash
}

cmd_shell() {
    service=web
    project=candidate-technical-assessment-senior-exercise

    docker exec -it $(docker ps --format "table {{.ID}}\t{{.Names}}"| awk '$2 ~ /^'${project}-${service}'-1/ {print $1}') /bin/bash -c "$@"
}

#+       run
#+              Run the application
#+
cmd_run() { cd $THIS_DIR ; docker-compose up ; }

#+       test
#+              Run the unit tests
#+
cmd_test() { cmd_shell "./mvnw test" ; }

main() {
    CMD=$1 ; shift
    case "$CMD" in
        boot) cmd_boot "$@" ;;
        debug) cmd_debug "$@" ;;
        deploy) cmd_deploy "$@" ;;
        help) cmd_help "$@" ;;
        init) cmd_init "$@" ;;
        initdb) cmd_initdb "$@" ;;
        loop) cmd_loop "$@" ;;
        make) cmd_make "$@" ;;
        mysql) cmd_mysql "$@" ;;
        run) cmd_run "$@" ;;
        sh) cmd_sh "$@" ;;
        test) cmd_test "$@" ;;
        *) usage "g { help | make | test | run | sh | deploy }" ;;
  esac
}

APP=gaggle
THIS_DIR=$( cd "$(dirname "$0")" >/dev/null 2>&1 ; cd ../ ; pwd )
THIS=$THIS_DIR/bin/g.sh

main "$@"