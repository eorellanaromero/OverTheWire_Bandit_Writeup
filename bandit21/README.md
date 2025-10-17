# Resolución de bandit21

1. Ingresar a la máquina como bandit21.

2. Revise los archivos de procesos cron en "/etc/cron.d/"

    `ls -l /etc/cron.d`

3. Verifique que el archivo "/etc/cron.d/cronjob_bandit22" existe y que sus permisos permitan leerlo como bandit21.

4. Lea el contenido de "/etc/cron.d/cronjob_bandit22", se mostrará la ruta al archivo que está ejecutando.

5. Verifique los permisos del archivo que se está ejecutando. El grupo del archivo es bandit21, y tiene permisos de lectura y ejecución.

6. Lea el contenido del archivo que está ejecutando cron. Se está copiando el archivo que contiene la contraseña de bandit22 a una ruta temporal.

7. Lea el contenido del archivo temporal, la contraseña de bandit22 está almacenada en él.