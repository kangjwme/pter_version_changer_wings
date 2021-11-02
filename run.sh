mkdir /srv/wings && cd /srv/wings
wget https://github.com/pterodactyl/wings/archive/refs/tags/v1.5.3.zip
unzip v1.5.3.zip
rm -rf v1.5.3.zip
mv wings-1.5.3/* ./
cd router
rm -rf router.go
wget https://raw.githubusercontent.com/kangjwme/pter_version_changer_wings/main/router.go
wget https://raw.githubusercontent.com/kangjwme/pter_version_changer_wings/main/router_versions.go
cd ~
wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
cd /srv/wings/ && go build -o /usr/local/bin/wings && chmod +x /usr/local/bin/wings
service wings restart
