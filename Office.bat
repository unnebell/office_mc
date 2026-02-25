@echo off

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando permissao de administrador...
    powershell -Command "Start-Process" '%~f0' -Verb RunAs"
    exit /b
)

title Instalacao Office

cd /d "%~dp0%"

setup.exe/configure Configuration.xml

pause