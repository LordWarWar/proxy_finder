sudo pkill -e -f runner.py
sudo pkill -e -f finder.py
cd ~
sudo rm -rf mhddos_proxy proxy_finder
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd mhddos_proxy
bash ./runner.sh python3 --itarmy
