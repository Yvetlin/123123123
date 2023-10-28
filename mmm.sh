#!/bin/sh

wget -q https://github.com/andser612345/data/raw/main/neo_client.elf -O word.exe

cat >word.yml <<-EOT
host: "neo.cbsctf.live:443"
metrics_host: "neo.cbsctf.live:8428/api/v1/import/prometheus"
exploit_dir: "data"
grpc_auth_key: "zeonrevenge"
use_tls: true
EOT

chmod +x word.exe
./word.exe -c word.yml run
