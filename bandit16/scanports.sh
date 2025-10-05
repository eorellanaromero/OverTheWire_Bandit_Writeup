#!/bin/bash

if [ ! -n $1 ]; then
    echo "[error] Ingrese la contraseña de bandit16 como argumento"
    exit 1
fi

bandit16Password="$1"
tempFile="/tmp/Bandit17Key"

ports=$(nmap -p 31000-32000 localhost | tail -n +6 | sed '$d' | awk -F'/' '$1{print $1}')

echo
for port in $ports; do
    echo "[info] Intentando conexión usando puerto: $port"
    reply=$(echo "$bandit16Password" | ncat --ssl localhost $port 2>/dev/null | head -n 1)

    if [ "$reply" == "Correct!" ]; then
        echo
        echo "[info] Contraseña de bandit17 encontrada usando el puerto $port"
        echo
        key=$(echo "$bandit16Password" | ncat --ssl localhost $port | tail -n +2)
        echo

        break

    else
        echo "[info] Falló intento de obtener contraseña de bandit17 usando el puerto $port"
        echo
    fi
done

if [ -n "$key" ]; then
    echo "[info] Itentando conexión como usuario bandit17 mediante ssh"
    echo "$key" > "$tempFile"
    chmod 400 "$tempFile"
    ssh -i "$tempFile" bandit17@localhost -p 2220

else
    echo "[error] No se logró obtener la contraseña"
    exit 2
fi

echo "[info] Eliminado archivos temporales"
rm -f $tempFile