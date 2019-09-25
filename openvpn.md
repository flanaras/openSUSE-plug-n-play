# OpenVPN on openSUSE

A very short introduction explaining how to install an openvpn profile.


## Installation

```
mv profile.ovpn profile.conf
sudo mv file.conf /etc/openvpn
sudo chmod 600 profile.conf
sudo chown root:root profile.conf
```

## Usage

Interacting with OpenVPN via systemctl.

```
sudo systemctl {start, stop, status} openvpn@profile
```
