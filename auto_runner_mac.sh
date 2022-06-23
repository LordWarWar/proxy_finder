set -e
pkill -f finder.py || true
pkill -f runner.py || true
cd ~
rm -rf proxy_finder mhddos_proxy
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git || true
cd mhddos_proxy
bash ./runner.sh python3.10 --itarmy
