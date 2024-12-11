#! /bin/sh

# change directory
cd ./mail

# download latest froxlor version
wget https://github.com/roundcube/roundcubemail/releases/download/1.5.9/roundcubemail-1.5.9-complete.tar.gz

# the content should go in to the folder /var/www/html/froxlor
# note: the archive contains the folder 'froxlor' already!
tar xvfz roundcubemail-1.5.9-complete.tar.gz

# remove archive
rm roundcubemail-1.5.9-complete.tar.gz

mv roundcubemail-1.5.9 roundcube

chmod 0777 -R roundcube/temp
chmod 0777 -R roundcube/logs
