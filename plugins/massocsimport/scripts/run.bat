@echo off
echo Chemins php et du script a lancer

SET path_php="C:\OCSNG\xampp\php"
SET plugin_glpi="C:\OCSNG\xampp\htdocs\glpi\plugins\massocsimport\scripts"

echo Definition du path

PATH = %PATH%;%path_php%


IF EXIST %plugin_glpi%\run.php GOTO RUN

IF NOT EXIST %plugin_glpi%\run.php GOTO EXIT

:RUN
echo Lancement du script
php %plugin_glpi%\run.php
GOTO FIN

:EXIT
echo Le chemin vers run.php est incorrect
pause

:FIN




