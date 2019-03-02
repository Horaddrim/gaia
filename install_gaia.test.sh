if [ -s "${HOME}/.gaia/templates/application_server.conf" ]
then 
    echo "Imported Application template: OK";
else 
    echo "ERROR: Cannot create application_server.conf file";
    exit 1
fi

if [ -s "${HOME}/.gaia/templates/nginx_default.conf" ]
then 
    echo "Imported NGINX template: OK";
else 
    echo "ERROR: Cannot create nginx_default.conf file";
    exit 1
fi

if [ -s "${HOME}/.gaia/templates/ssl.opt" ]
then 
    echo "Imported default SSL options: OK";
else 
    echo "ERROR: Cannot create ssl.opt file";
    exit 1
fi

if [ -s "/bin/gaia" ]
then 
    echo "Setted the Gaia binary: OK";
else 
    echo "Cannot setup the Gaia binary in the /bin directory!";
    exit 1
fi