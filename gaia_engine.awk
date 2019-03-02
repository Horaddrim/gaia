#! /usr/bin/awk
{
    gsub(/APP_NAME/, APP_NAME);
    gsub(/APP_ADDRESS/, APP_ADDRESS);
    gsub(/APP_DOMAIN/, APP_DOMAIN);
    print
}