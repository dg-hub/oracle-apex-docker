ORACLE_PWD=`echo $RANDOM `| shasum | cut -c 1-10 | base64
CONTAINER_NAME=aci-oracleapex-$RANDOM
az container create \
    --name $CONTAINER_NAME \
    --resource-group rg-flaskapi-dev \
    --image qrdgliddy/oracle-database:18.4.0-xe \
    --dns-name-label $CONTAINER_NAME \
    --query ipAddress.fqdn \
    --environment-variables ORACLE_PWD=administrator99 ORACLE_CHARACTERSET=AL32UTF8 \
    --gitrepo-url "https://github.com/dg-hub/oracle-apex-docker.git" \
    --gitrepo-mount-path "/opt/oracle/scripts" \
    --restart-policy Never \
    --ports 8080 \
    --cpu 4 \
    --memory 6 \
    --out table
echo "Password: ${ORACLE_PWD}"

