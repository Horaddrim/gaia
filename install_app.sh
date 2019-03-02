mkdir -p $GAIA_GENERATED_APPS;
APP_NAME=$1;
APP_ADDRESS=$2;
APP_DOMAIN=$3;

echo "Application name: $APP_NAME";
echo "Application IP address: $APP_ADDRESS";
echo "Application DNS domain: $APP_DOMAIN";

app_conf_file="${GAIA_GENERATED_APPS}/${APP_NAME}.conf"

echo "Using template: $GAIA_APPLICATION_TEMPLATE";
echo "Result output: $app_conf_file";

awk -f $GAIA_ENGINE -v APP_NAME="$APP_NAME" -v APP_ADDRESS="$APP_ADDRESS" -v APP_DOMAIN="$APP_DOMAIN" > $app_conf_file $GAIA_APPLICATION_TEMPLATE 

cp $app_conf_file "$NGINX_HOME/servers/$APP_NAME.conf";

service nginx restart