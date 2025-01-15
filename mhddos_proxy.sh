#!/data/data/com.termux/files/usr/bin/bash
# wrapper script for termux
TOOL_PATH=$HOME/.mhddos_proxy

if [[ ! $(uname -m) = aarch64 ]]; then
 EMU=qemu-aarch64
fi

termux-wake-lock

exec sudo grun -n $EMU $TOOL_PATH $*
