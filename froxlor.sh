#! /bin/sh

# change directory
cd ./mail

# download latest froxlor version
wget https://files.froxlor.org/releases/froxlor-latest.tar.gz

# the content should go in to the folder /var/www/html/froxlor
# note: the archive contains the folder 'froxlor' already!
tar xvfz froxlor-latest.tar.gz

# remove archive
rm froxlor-latest.tar.gz

chmod 0777 -R froxlor/temp