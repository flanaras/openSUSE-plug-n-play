# OpenVPN on openSUSE

A very short introduction explaining how to install an openvpn profile.


## Installation

```
sudo install -o root -g root -m 600 profile.ovpn /etc/openvpn/profile.conf
```

## Usage

Interacting with OpenVPN via systemctl.

```
sudo systemctl {start, stop, status} openvpn@profile
```
