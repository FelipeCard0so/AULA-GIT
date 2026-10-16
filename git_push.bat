
@echo off
chcp 65001 >nul
cd /d "Y:\PycharmProjects\Portfolio---Felipe\CURSO_GTI"

echo.
set /p "mensagem=Digite a mensagem do commit: "

if "%mensagem%"=="" (
    echo Erro: a mensagem nao pode ficar vazia.
    pause
    exit /b 1
)

git add .
git commit -m "%mensagem%"

if errorlevel 1 (
    echo Erro ao executar o commit.
    pause
    exit /b 1
)

git push origin main

pause
