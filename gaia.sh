#! /bin/bash
if [ -z "${NGINX_HOME}" ]
then
    export NGINX_HOME=$GAIA_BASE_DIR;
fi

export GAIA_TEMPLATES=$GAIA_HOME/templates;
export GAIA_GENERATED_APPS=$GAIA_HOME/apps;
export GAIA_APPLICATION_TEMPLATE=$GAIA_TEMPLATES/application_server.conf;
export GAIA_ENGINE=$GAIA_HOME/gaia_engine.awk;

function run_tests() {
    bash clean_tests.sh;
    
    # Testing instalation;
    bash install_gaia.sh;
    bash install_gaia.test.sh;

    echo "Cleaning up tests";
    # bash clean_tests.sh;
}

function create_app() {
    bash $GAIA_HOME/install_app.sh $1 $2 $3;
}

function list_apps() {
    bash $GAIA_HOME/list_apps.sh;
}

function help() {
    echo "Gaia, the mother of everyone";
    echo "This application can install applications into your NGINX server, making manage them easy";
    echo "";
    echo "USAGE:";
    echo "      app: Manage your apps";
    echo "          list: List all your apps";
    echo "          install [application name] [application address] [application domain]: Install a new app";
    echo "              Parameters: ";
    echo "                  application name: The name of the app";
    echo "                  application address: The IP address and the port of the original app server";
    echo "                  application domain: The DNS domain, used for get the SSL certificates";
}


case $1 in
    app)
        case $2 in
        list)
            list_apps;
            ;;

        install)
            echo "Installing a new app";
            create_app $3 $4 $5;
            ;;

        *)
            help;
            exit 0;
            ;;
        esac
        ;;

    *) 
        help;
        exit 0;
        ;;
esac
