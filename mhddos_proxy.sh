#!/data/data/com.termux/files/usr/bin/bash
# wrapper script
TOOL_PATH=$HOME/mhddos_proxy

if [[ ! $(uname -m) = aarch64 ]]; then
 EMU=qemu-aarch64
fi

exec sudo grun -n $EMU $TOOL_PATH $*
