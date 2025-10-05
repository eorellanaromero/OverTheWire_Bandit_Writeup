# Resolución de bandit16

1. Ubíquese en el directorio que contiene el script "scanport.sh"
2. Copie el script "scanports.sh" mediante el siguiente comando

`scp -P 2220 scanports.sh bandit16@bandit.labs.overthewire.org:/tmp/`

3. Ingrese a la máquina como el usuario bandit16 usando el siguiente comando

`ssh bandit16@bandit.labs.overthewire.org -p 2220`

4. Agregue permisos de ejecución al script usando el siguiente comando

`chmod +x /tmp/scanports.sh`

5. Ejecute el script usando el siguiente comando, donde "PasswordBandit16" es la contraseña de bandit16

`/tmp/scanports.sh PasswordBandit16`

6. Elimine el script "scanports.sh" usando el siguiente comando

`rm -f /tmp/scanports.sh`

