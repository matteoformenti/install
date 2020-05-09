echo 'alias l="ls -l -h -g"
alias ll="l -a"
alias artisan="php artisan"
alias serve="artisan serve"
alias tinker="artisan tinker"
alias dump-server="artisan dump-server"
alias laravel="$HOME/.config/composer/vendor/laravel/installer/laravel"' | tee .bash_aliases


sudo apt -y update;
sudo apt -y upgrade;
sudo apt -y install software-properties-common apt-transport-https;

sudo apt -y update;
sudo apt -y install powertop transmission tlp tlp-rdw php mysql-server htop gnome-tweaks git gdebi unzip composer chrome-gnome-shell gnome-tweak-tool gnome-session;
sudo apt -y update;
sudo apt -y upgrade;
sudo tlp start
sudo powertop --auto-tune
sudo apt install -y php-bz2 php-common php-composer-ca-bundle php-composer-semver php-composer-spdx-licenses php-composer-xdebug-handler php-curl php-fpm php-gd php-http php-json-schema php-mbstring php-mysql php-pear php-php-gettext php-phpseclib php-propro php-psr-log php-raphf php-symfony-console php-symfony-debug php-symfony-filesystem php-symfony-finder php-symfony-process php-tcpdf php-xml php-zip

mkdir /tmp/downloads;
cd /tmp/downloads;
git clone htts://github.com/vinceliuice/Qogir-theme;
sudo ./Quoigr-theme/Install -m -c;

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
yes | sudo gdebi google-chrome-stable_current_amd64.deb;
composer global require laravel/installer;

mkdir $HOME/Programs && cd $HOME/Programs;
