# docker-povray
Build povray in a Docker container

## Run an instance and mount the current directory

docker run -i -t --rm -v $PWD:/src --name povray bradleybossard/docker-povray
