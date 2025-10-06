# Resolución de bandit18

1. No es posible acceder mediante ssh, ya que la máquina cierra la conexión, mostrando el texto "Byebye !"

2. En la máquina local creé el directorio "bandit18".

3. Ejecute el siguiente comando para copiar a la máquina local el archivo "readme", donde se encuentra almacenada la contraseña de bandit19.

`scp -P 2220 bandit18@bandit.labs.overthewire.org:/home/bandit18/readme bandit18/`

4. La contraseña de bandit19 se encuentra en el fichero "bandit18/readme", en la máquina local.