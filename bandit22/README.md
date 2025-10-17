# Resolución de bandit22

1. Ingresar a la máquina como bandit22.

2. Revise los archivos de procesos cron en "/etc/cron.d/"

    `ls -l /etc/cron.d`

3. Verifique que el archivo "/etc/cron.d/cronjob_bandit23" existe y que sus permisos permitan leerlo como bandit22.

4. Lea el contenido de "/etc/cron.d/cronjob_bandit23", se mostrará la ruta al archivo que está ejecutando.

5. Verifique los permisos del archivo que se está ejecutando. El grupo del archivo es bandit22, y tiene permisos de lectura y ejecución.

6. Lea el contenido del archivo que está ejecutando cron. Se está encriptando la frase "I am user bandit22" y el resultado (sin espacios, ni guión) se está utilizando como nombre del archivo temporal en el que se copia el archivo que almacena la contraseña de bandit23.

7. Ejecute el script que está ejecutando cron.

8. Lea la salida del script. El nombre del archivo temporal se mostrará por consola.

9. La contraseña de bandit23 está almacenada en el archivo temporal.

10. Pero ..., la contraseña no funciona.

11. Tal como se muestra en el archivo que está ejecutando cron, encripte la frase "I am user bandit23".

12. Utilice el resultado del encriptado como nombre de archivo y lea su contenido en /tmp/