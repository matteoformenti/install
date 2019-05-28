echo 'alias l="ls -l -h -g"
alias ll="l -a"
alias serve="php artisan serve"
' | tee .bash_aliases


sudo apt -y update;
sudo apt -y upgrade;
sudo apt -y install software-properties-common apt-transport-https;

sudo add-apt-repository -y ppa:linuxuprising/java;
sudo add-apt-repository -y ppa:daniruiz/flat-remix;
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list;

sudo apt -y update;
sudo apt -y install powertop transmission tlp tlp-rdw php mysql-server apache2 htop gnome-tweaks git gdebi unzip nodejs composer fonts-firacode chrome-gnome-shell gnome-tweak-tool elasticsearch;
sudo apt -y update;
sudo apt -y upgrade;
sudo apt install oracle-java12-installer;
sudo apt -y install gtk2-engines-murrine gtk2-engines-pixbuf flat-remix-gnome flat-remix-gtk flat-remix;
sudo tlp start
sudo powertop --auto-tune

mkdir /tmp/downloads;
cd /tmp/downloads;
git clone htthttp://admin.itmakers.org/ps://github.com/vinceliuice/Qogir-theme;
sudo ./Quoigr-theme/Install -m -c;
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb;
yes | sudo gdebi vscode.deb;
wget https://www.privateinternetaccess.com/installer/download_installer_linux;
tar -xzf pia-v82-installer-linux.tar.gz;
./pia-v82-installer-linux.sh;

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
yes | sudo gdebi google-chrome-stable_current_amd64.deb;
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.14.5179.tar.gz -O toolbox.tar.gz;
tar -xf toolbox.tar.gz;
composer global require laravel/installer;
sudo apt install -y php-bz2 php-common php-composer-ca-bundle php-composer-semver php-composer-spdx-licenses php-composer-xdebug-handler php-curl php-fpm php-gd php-http php-json-schema php-mbstring php-mysql php-pear php-php-gettext php-phpseclib php-propro php-psr-log php-raphf php-symfony-console php-symfony-debug php-symfony-filesystem php-symfony-finder php-symfony-process php-tcpdf php-xml php-zip

mkdir $HOME/Programs && cd $HOME/Programs;
wget https://download.ultimaker.com/cura_open_beta/Ultimaker_Cura-4.1.0-BETA.AppImage -O Cura.AppImage;
wget https://github.com/FreeCAD/FreeCAD/releases/download/0.19_pre/FreeCAD_0.19-16854-Linux-Conda_Py3Qt5_glibc2.12-x86_64.AppImage -O FreeCAD.AppImage;
