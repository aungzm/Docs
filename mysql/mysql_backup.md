## 1. Open a terminal on your Ubuntu server.

Navigate to the directory where the script is going to be saved

```bash cd /path/to/your/scripts ```

## 2. Create a new file with a .sh extension and edit it with preferred text editor.

```bash nano backup_script.sh ```

Paste the script content into the file and save it.

## 3. Make the script executable 

```bash chmod +x backup_script.sh ```

Now, the script can be run by executing ./backup_script.sh in the terminal.

## 4. Open crontab 

``` bash crontab -e```

## 5. Add the following line to crontab file

``` bash 0 2 * * * /path/to/backup_script.sh```

This will run the crontab everyday at 2 AM. Check [here](https://crontab.guru/) on how to schedule crontab schedules

## 6. Save and exit the crontab editor

Done.