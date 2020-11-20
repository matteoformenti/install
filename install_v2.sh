
# no sudo
echo 'alias l ="ls -l -h --group-directories-first"' | tee .bash_aliases
echo 'alias ll ="l -a"' | tee .bash_aliases
echo 'alias artisan ="php artisan"' | tee .bash_aliases
echo 'alias serve ="artisan serve"' | tee .bash_aliases
echo 'alias dump-server ="artisan dump-server"' | tee .bash_aliases
echo 'alias tinker ="artisan tinker"' | tee .bash_aliases

# fetch package list
sudo apt -y update;
# update packages
sudo apt -y upgrade;

sudo apt -y install software-properties-common apt-transport-https;
sudo -y add-apt-repository ppa:ondrej/php;
sudo apt -y update;

sudo apt -y install php7.4 mysql-server htop git gdebi unzip apache2 curl;
sudo apt -y install php-bz2 php-common php-curl php-gd php-imagick php-http php-json-schema php-mbstring php-mysql php-mysqli php-pear php-xml php-zip;

# install chrome
cd /tmp;
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
yes | sudo gdebi google-chrome-stable_current_amd64.deb;
cd ~;

# install composer
cd /tmp;
wget https://getcomposer.org/installer;
sudo php composer-setup.php --install-dir=/usr/bin --filename=composer;
cd ~;

# install node
curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

# install laravel
composer global require laravel/installer;

# install vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/;
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
sudo apt update;
sudo apt -y install code;

echo "scarica toolbox https://www.jetbrains.com/toolbox-app/"

