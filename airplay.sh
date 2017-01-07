sudo apt-get --yes --force-yes install git libao-dev libssl-dev libcrypt-openssl-rsa-perl libio-socket-inet6-perl libwww-perl avahi-utils libmodule-build-perl
git clone https://github.com/njh/perl-net-sdp.git
cd perl-net-sdp
perl Build.PL
sudo ./Build
sudo ./Build test 
sudo ./Build install
git clone https://github.com/hendrikw82/shairport.git 
cd shairport
./shairport.pl -a AlexaPi