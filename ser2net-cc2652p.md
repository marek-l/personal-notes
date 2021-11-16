### Install gensio

`git clone https://github.com/cminyard/gensio.git`

install gensio depencencies. see Readme, for me it was:

`sudo apt install gcc git swig python3-dev libssl-dev pkg-config libavahi-client-dev avahi-daemon libtool autoconf automake make libsctp-dev libpam-dev libwrap0-dev`
```
./reconf
./configure
make
sudo make install
install ser2net
```

`git clone https://github.com/cminyard/ser2net.git`

### install ser2net depencencies. see Readme, for me it was:

```
sudo apt install libyaml-dev

./reconf
./configure
make
sudo make install
```

### create a config for ser2net

```
sudo mkdir /etc/ser2net
sudo nano /etc/ser2net/ser2net.yaml # do whatever config you want. See ser2net.yaml as an example
run ser2net for testing
```

### run on startup

`sudo nano /etc/systemd/system/ser2net.service`

```
[Unit]
Description=ser2net usb to eth
Wants=network-online.target
After=network-online.target

[Service]
User=pi
Group=pi
WorkingDirectory=/home/pi
ExecStartPre=/bin/sleep 30
ExecStart=/usr/local/sbin/ser2net -c /etc/ser2net/ser2net.yaml
Restart=always

[Install]
WantedBy=multi-user.target
sudo systemctl enable ser2net.service
```
