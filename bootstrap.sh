#!/usr/bin/env bash

# Node
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

add-apt-repository -y ppa:jonathonf/python-3.6
apt-get update
apt-get -y upgrade

apt-get -y install nodejs
sudo ln -s /usr/bin/nodejs /usr/sbin/node

apt-get -y install python3.6 python3.6-dev zlib1g zlib1g-dev libpq-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libxmlsec1 libxmlsec1-dev swig libjpeg-dev libpng12-dev python-lxml python-cffi libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 shared-mime-info redis-server git python3-pip postgresql-9.5 yarn python-opencv python-numpy

echo "local all postgres peer" > /etc/postgresql/9.5/main/pg_hba.conf
echo "local django_db django md5" >> /etc/postgresql/9.5/main/pg_hba.conf
echo "local all all peer" >> /etc/postgresql/9.5/main/pg_hba.conf
echo "host all all 127.0.0.1/32 md5" >> /etc/postgresql/9.5/main/pg_hba.conf
echo "host all all ::1/128 md5" >> /etc/postgresql/9.5/main/pg_hba.conf

sudo -u postgres bash -c "psql -c \"CREATE USER django WITH PASSWORD 'django';\""
sudo -u postgres createdb --owner=django --encoding=UTF8 django_db

service postgresql restart

# Virtualenv
pip3 install virtualenv
pip3 install virtualenvwrapper

echo "export WORKON_HOME=~/Envs" >> /home/vagrant/.profile
echo "export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'" >> /home/vagrant/.profile
echo "export PATH=\$PATH:/home/vagrant/hptx/node_modules/.bin" >> /home/vagrant/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.profile
echo "cd /home/vagrant/hptx/hptx" >> /home/vagrant/.profile
echo "workon hptx" >> /home/vagrant/.profile

su - vagrant << EOF
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv --python=/usr/bin/python3 hptx

echo "cd /home/vagrant/hptx/hptx" >> /home/vagrant/Envs/hptx/bin/postactivate

workon hptx

cd /home/vagrant/hptx/

pip3 install -r requirements/dev.txt
EOF

# Redis
echo "unixsocket /var/run/redis/redis.sock" >> /etc/redis/redis.conf
echo "unixsocketperm 777" >> /etc/redis/redis.conf
echo "maxmemory 64mb" >> /etc/redis/redis.conf
sed -i.bak "s/^bind 127.0.0.1$/# bind 127.0.0.1/" /etc/redis/redis.conf
sed -i.bak "s/^port 6379$/# port 6379/" /etc/redis/redis.conf

service redis-server restart
