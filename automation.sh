
sudo apt update -y
dpkg --get-selections | grep apache
sudo apt-get install apache2
sudo systemctl status apache2
sudo systemctl start apache2

cd /tmp/
tar saurab-httpd-logs$(date '+%d%m%Y-%H%M%S') ).tar /var/log/apache2/ 

myname="saurab"
s3_bucket="upgrad-saurab"
aws s3 \
cp /tmp/${myname}-httpd-logs-$(date '+%d%m%Y-%H%M%S')).tar \
s3://${s3_bucket}/${myname}-httpd-logs-$(date '+%d%m%Y-%H%M%S')).tar


FILE=/var/www/html/inventroy.html
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    touch inventory.html
fi

crontab -e
0 1 * * * open ~/root/Automation_Project/automation.sh
sudo nano /etc/crontab
sudo nano /etc/crontab

systemctl status cron
sudo service cron start
exit
