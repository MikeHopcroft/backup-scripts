# File Backup Scripts

This is a collection of scripts for backing up a Windows machine to an external hard drive.

## Preparing a new backup drive

* Connect new drive.
* Open windows shell and `cd` to the folder where the backups will reside. This is usually the root of the new drive.
* From that directory, run `scripts\prepare.cmd`.
  * This will create a folder named `backups` and copy over some scripts and this README.md file.

## Preparing a backup

* Edit the `backups\scripts\backup.cmd` file on the new drive to add the list of folders to back up. For each folder to back up:
  * Let `SOURCE` equal the path to the folder to back up.
  * Let `DEST` be the name of a folder in the `\backups` directory where the backups and logs should be written.
  * Add the line
  ~~~
  call backup-one-folder.cmd SOURCE DEST
  ~~~

## Running a backup
  * Run `backups\scripts\backup.cmd`.
  * This will use xcopy to backup each folder to `backups\folders\DEST`.
  * It will write a timestamped log file to `backups\logs\DEST`.