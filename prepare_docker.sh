if [[ $(systemctl status docker | grep "active") == "" ]]; then
	systemctl start docker
fi
docker-compose build
