#/bin/sh

GOOS=linux CGO_ENABLED=0 go build

fpm -s dir -t rpm -n xip.name --rpm-os linux -v v1.0-centos7 \
  ./xip.name=/usr/bin/xip.name \
  ./xip.service=/usr/lib/systemd/xip.service \
  ./xip.conf=/etc/xip/xip.conf