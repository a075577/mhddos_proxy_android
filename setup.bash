
mkdir -p .shortcuts .termux/boot

apt update -y && apt install -y root-repo tsu glibc-repo glibc
curl -s https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64 -Lo mhddos_proxy
grun -c mhddos_proxy
curl -sOL https://github.com/a075577/mhddos_proxy_android/raw/refs/heads/main/mhddos_proxy.sh
chmod +x mhddos_proxy mhddos_proxy.sh
