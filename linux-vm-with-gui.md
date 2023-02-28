# It is possible
Using External Apps more info --> using Xrdp using linux [MS Docs](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/use-remote-desktop?tabs=azure-cli)

code snippet :

```sh
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install xfce4
sudo apt install xfce4-session

sudo apt-get -y install xrdp
sudo systemctl enable xrdp

sudo adduser xrdp ssl-cert

echo xfce4-session >~/.xsession

sudo service xrdp restart
```

Done !! Now RDP insode your VM
