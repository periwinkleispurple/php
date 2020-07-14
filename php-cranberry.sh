# Usage : Fix your missing php packages problems. 

cd; clear; echo Cranberry (Buster 10) :: Php Common Packages; sleep 2s ; echo Cranberry :: Updating repository...; sleep 2s 

cd /tmp; wget https://packages.sury.org/php/apt.gpg

sudo apt-key add apt.gpg

echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.list

cd; clear; apt-get update

PhpPackageList="apache2 curl wget aptitude php7.3 php7.3-cli php7.3-common libapache2-mod-php7.3 php7.3-mysql php7.3-dom php7.3-simplexml php7.3-ssh2 php7.3-xml php7.3-xmlreader php7.3-curl  php7.3-exif  php7.3-ftp php7.3-gd  php7.3-iconv php7.3-imagick php7.3-json  php7.3-mbstring php7.3-posix php7.3-sockets php7.3-tokenizer php7.3-common php7.3-mysql php7.3-gd php7.3-imap php7.3-json php7.3-curl php7.3-zip php7.3-xml php7.3-mbstring php7.3-bz2 php7.3-intl php7.3-gmp"

for packageName in $PhpPackageList; do apt install -y $packageName; clear; echo Last : $packageName; done

systemctl restart apache2

cd; clear; echo Cranberry :: apache2, curl, wget, aptitude installed 
echo; echo Php 7.3 :: php7.3 php7.3-cli php7.3-common libapache2-mod-php7.3 php7.3-mysql php7.3-dom php7.3-simplexml php7.3-ssh2 php7.3-xml php7.3-xmlreader php7.3-curl  php7.3-exif  php7.3-ftp php7.3-gd  php7.3-iconv php7.3-imagick php7.3-json  php7.3-mbstring php7.3-posix php7.3-sockets php7.3-tokenizer php7.3-common php7.3-mysql php7.3-gd php7.3-imap php7.3-json php7.3-curl php7.3-zip php7.3-xml php7.3-mbstring php7.3-bz2 php7.3-intl php7.3-gmp installed; 
