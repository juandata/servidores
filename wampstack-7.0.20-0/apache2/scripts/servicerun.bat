@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start wampstackApache
goto end

:stop

"C:/Bitnami/wampstack-7.0.20-0/apache2\bin\httpd.exe" -n "wampstackApache" -k stop

:end
exit
