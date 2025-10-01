# Resolución de Bandit13

1.- Ingresar a Bandit13 con la password obtenida en Bandit12
    `ssh bandit13@bandit.labs.overthewire.org -p 2220`

2.- Ingresar a Bandit14 utilizando la clave privada en Bandit13
    `ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org`
    `ssh -i sshkey.private -p 2220 bandit14@localhost`

3.- Obtener la contraseña desde `/etc/bandit_pass/bandit14`
    `cat /etc/bandit_pass/bandit14`