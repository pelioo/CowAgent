@echo off
title 激活 Python 虚拟环境
color 0A

REM 检查是否在项目根目录下运行
if not exist ".venv\Scripts\activate" (
    echo 错误：找不到虚拟环境激活脚本！请确保在项目根目录下运行此脚本。
    goto :ERROR
)

REM 激活虚拟环境
echo 正在激活虚拟环境...
call .venv\Scripts\activate

echo 虚拟环境已激活！
echo.
echo 现在可以运行 Python 命令了，例如：
echo   python app.py
echo.

cmd /k
goto :END

:ERROR
echo 脚本执行失败！
pause

:END