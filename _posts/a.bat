@echo off & setlocal enabledelayedexpansion
for %%f in (*.md) do (

for /f "tokens=* delims= " %%i in ('findstr /b ^"date:^" %%f') do (
@SET num=%%i
@echo ren %%f !num:~6,10!-%%f
)

)
pause
