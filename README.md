# CLOUDFLARE-update-ip

Keep your IP updated for your DNS records on Cloudflare

## RUN

### BUILD

```
$ git clone https://github.com/M4RC02U1F4A4/CLOUDFLARE-update-ip.git
$ cd CLOUDFLARE-update-ip
$ docker build -t cloudflare-update-ip .
```

### RUN

```
$ docker run --name=cloudflare-update-ip -d \
    -e TZ="Europe/Berlin" \
    -e zone_identifier=<zone_identifier> \
    -e identifier=<identifier> \
    -e token=<token> \
    -e domain=<domain> \
    cloudflare-update-ip
```
