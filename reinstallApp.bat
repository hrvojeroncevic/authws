REM ------------ 1 ------------------
call mvn clean install

REM ------------ 2 ------------------
call docker stop authws_dock

REM ------------ 3 ------------------
call docker rm authws_dock

REM ------------ 4 ------------------
call docker build -t authws:latest .

REM ------------ 5 ------------------
call docker run -d --name authws_dock -v D:/Temp:/var/log/Application/ -p 8082:8082 authws:latest