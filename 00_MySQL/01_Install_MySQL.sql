sudo pacman -Syu

" Install Mariadb server"
sudo pacman -S mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mariadb-secure-installation 

" Install MySQL Workbench (GUI)"
sudo pacman -S mysql-workbench

" Or"
sudo pacman -S dbeaver

" You can also use terminal"
$ mysql -u root -p
