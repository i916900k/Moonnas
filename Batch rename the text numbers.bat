@echo off
setlocal enabledelayedexpansion

:: 计数器从1开始
set /a count=1

:: 支持的图片格式
for %%i in (jpg png jpeg gif bmp) do (
    for %%f in (*.^%%i) do (
        ren "%%f" "!count!.^%%i"
        set /a count+=1
    )
)

echo 重命名完成！
pause
