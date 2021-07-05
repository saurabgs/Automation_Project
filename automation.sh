
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



