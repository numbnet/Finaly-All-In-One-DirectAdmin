#!/bin/bash
# From VietCoders With Love
# Update Your OS
function pause(){
   read -p "$*"
}
yum update -y;
# Check Cronjob Installed
rpm -q cronie;
# Install Cronjob
yum install cronie -y;
# Check Structure Conjob
cat /etc/crontab;
# Create Cronjob
touch /root/crontab && chmod 644 /root/crontab;
echo "* 1 * * * /usr/bin/find . -name '*.log' -mtime +7 -exec rm -f {} \;" >> /root/crontab;
# Restart Cronjob
systemctl restart crond.service;
echo "===================================================================================="
echo ""
echo "               Đã Cài đặt / Thiết lập Cronjob thành công"
echo ""
echo "                 From VietCoders Community With Love"
echo ""
echo ""
echo "        Cronjob được thiết lập tự động xoá sau 1h sáng hàng ngày"
echo "                   Bạn có muốn thiết lập lại không.?"
echo ""
echo ""
pause ' Nhấn [Enter] để thiết lập tuỳ chỉnh theo ý | Nhấn CTRL + C để sử dụng mặc định';
echo ""
echo ""
echo "===================================================================================="
nano /root/crontab -e;

bash <(curl -Ss https://raw.githubusercontent.com/RocketDEVvn/Create-Cronjob-Auto-Clean/main/vietcoders-auto-clean-conjob.sh || wget -O - https://raw.githubusercontent.com/RocketDEVvn/Create-Cronjob-Auto-Clean/main/vietcoders-auto-clean-conjob.sh)