
apt update -y && apt install -y root-repo tsu glibc-repo glibc
[[ $(uname -m) = aarch64 ]] || apt install -y qemu-user-aarch64
curl https://github.com/porthole-ascend-cinnamon/mhddos_proxy_releases/releases/latest/download/mhddos_proxy_linux_arm64 -Lo .mhddos_proxy
grun -c .mhddos_proxy
curl -OL https://github.com/a075577/mhddos_proxy_android/raw/refs/heads/main/mhddos_proxy.sh
curl -OL https://github.com/a075577/mhddos_proxy_android/raw/refs/heads/main/mhddos.ini
chmod +x .mhddos_proxy mhddos_proxy.sh

# quick link for Termux Widget
mkdir -p ~/.shortcuts
install -m 0700 $PWD/mhddos_proxy.sh ~/.shortcuts/MHDDOS_PROXY

echo -e "\n\e[32m ./mhddos_proxy.sh   🔥 \e[0m\n"
