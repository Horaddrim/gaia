export GAIA_HOME=$HOME/.gaia;
export NGINX_HOME=/etc/nginx;

export GAIA_TEMPLATES=$GAIA_HOME/templates;
export GAIA_GENERATED_APPS=$GAIA_HOME/apps;
export GAIA_APPLICATION_TEMPLATE=$GAIA_TEMPLATES/application_server.conf;
export GAIA_ENGINE=$GAIA_HOME/gaia_engine.awk;

GITHUB_USERNAME=$1
GITHUB_PASSWORD=$2

git clone https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/shawee-io/gaia $GAIA_HOME

mkdir $GAIA_GENERATED_APPS;

mkdir -p $NGINX_HOME/servers;

cp $GAIA_TEMPLATES/ssl.opt $NGINX_HOME/servers/ssl.opt;

cp $GAIA_TEMPLATES/nginx_default.conf $NGINX_HOME/nginx.conf;

touch /bin/gaia;
cp $GAIA_HOME/gaia.sh /bin/gaia;
chmod +x /bin/gaia;
