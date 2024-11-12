sudo apt update
sudo apt install curl wget make build-essential nginx fail2ban git \
    rsync debmirror ufw certbot python3-certbot-nginx tmux smartmontools \
    cron python3-dev btop

sudo systemctl enable --now nginx
sudo systemctl enable --now fail2ban
sudo systemctl enable --now cron
sudo systemctl enable --now rsync

sudo ufw allow 'Nginx Full'
sudo ufw allow ssh
sudo ufw allow 443/udp
sudo ufw allow 873
sudo ufw enable

