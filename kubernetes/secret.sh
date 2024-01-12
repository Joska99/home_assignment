kubectl create secret docker-registry ecr \
    --docker-server=564115879819.dkr.ecr.us-east-1.amazonaws.com \
    --docker-username=AWS \
    --docker-password=$(aws ecr get-login-password) \
    --namespace=default
