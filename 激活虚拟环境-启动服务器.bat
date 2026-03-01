@echo off
title OpenDify Python Server
color 0A

REM 检查是否在项目根目录下运行
if not exist ".venv\Scripts\activate" (
    echo 错误：找不到虚拟环境激活脚本！请确保在项目根目录下运行此脚本。
    goto :END
)

REM 激活虚拟环境
echo 正在激活虚拟环境...
call .venv\Scripts\activate

if errorlevel 1 (
    echo 错误：虚拟环境激活失败！
    goto :END
)

echo 虚拟环境已激活。

REM 启动 CowAgent 服务
echo 正在启动 CowAgent 服务器...
python app.py

if errorlevel 1 (
    echo 错误：Python 服务器启动失败！
    goto :END
)

:END
echo 脚本执行完毕。
pause