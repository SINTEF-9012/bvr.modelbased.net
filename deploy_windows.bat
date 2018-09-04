set APP_NAME=bvr-site
set IMAGE_NAME=local/bvr-site:latest
echo "Cleaning up..."
docker stop %APP_NAME%
docker rm %APP_NAME%
docker rmi %IMAGE_NAME%

echo "Building a docker image with BVR"
docker build --no-cache -t %IMAGE_NAME% .

docker run --restart always -dit -p 8080:80 --name %APP_NAME% %IMAGE_NAME%