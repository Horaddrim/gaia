for file in `ls $GAIA_GENERATED_APPS` 
do
    awk `{split(file, '.'); print;}`
done
