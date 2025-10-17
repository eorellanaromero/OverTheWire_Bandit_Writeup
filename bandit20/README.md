# Resolución de bandit20

1. Ingresar a la máquina como el usuario bandit20 en dos consolas.

2. En la primera consola ejecute el siguiente comando, para ejecutar el script "suconnect" usando el puerto 9098.

`$ ./suconnect 9098`

3. En la segunda consola ejecute el siguiente comando, para ponerse en escucha por el puerto 9098.

`$ nc -lp 9098`

4. En la segunda consola escriba la contraseña de bandit20 y presione enter.

5. En la consola 2 retornará la contraseña de bandit20 y la de bandit21.

6. Además, en la consola 1 indicará que la contraseña es correcta y que enviará la nueva.

`Password matches, sending next password`