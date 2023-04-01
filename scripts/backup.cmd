setlocal
cd /D "%~dp0"
call backup-one-folder.cmd c:\temp\backuptest\a a
call backup-one-folder.cmd c:\temp\backuptest\b b
