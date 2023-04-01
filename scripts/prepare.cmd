if not exist backups\NUL mkdir backups
mkdir backups\scripts
copy %~dp0*.cmd backups\scripts
copy %~dp0..\*.md backups

