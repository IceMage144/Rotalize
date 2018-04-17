p=$(dirname $(realpath $0))
if [ -d /run/postgresql ]; then
	echo "Socket already created"
else
	su -c 'mkdir /run/postgresql &&
		   chown -R postgres:postgres /run/postgresql'
	echo 'Created socket'
fi
gnome-terminal -- sh -c 'cd /var/lib/postgres && sudo -u postgres postgres -D data'
echo "Initialized database"
sleep 10
su -c 'cd /var/lib/postgres &&
       sudo -u postgres createuser rotalize -s &&
       echo "Created user"'
cd "$p"
rake db:create
