setlocal
cd /D "%~dp0"
cd ..

set dest=folders\%2
set logs=logs\%2
if not exist %dest%\NUL mkdir %dest%
if not exist %logs%\NUL mkdir %logs%

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,8%-%datetime:~8,6%
echo %datetime%.txt
xcopy %1 %dest% /c /d /e /i /s /y > %logs%\%datetime%.txt
