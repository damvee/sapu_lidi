#!/bin/bash


########################################################################
#script pembersih system linux
# code by	: Damvee
# dibuat 	: januari 10 2019
# 
# kode ini di persembahkan untuk rakyat
# anda dapat memodifikasi, dan menyebarkan dengan gratis
########################################################################
echo "			   "
echo "			   "
echo "xxxxxxxxxxxxxxxxxxxxx"
echo "---------------------"
echo "---------------------"
echo "xxxxxxxxxxxxxxxxxxxxx"
echo "╔═╗┌─┐┌─┐┬ ┬	|||"
echo "╚═╗├─┤├─┘│ │    |||||"
echo "╚═╝┴ ┴┴  └─┘  |||||||"
echo "┬  ┬┌┬┐┬    |||||||||"
echo "│  │ │││  |||||||||||"
echo "┴─┘┴─┴┘┴|||||||||||||"
echo "xxxxxxxxxxxxxxxxxxxxx"
echo "---------------------"
echo "---------------------"
echo "xxxxxxxxxxxxxxxxxxxxx"
echo "			   "
echo "			   "
echo "------WELCOME--------"
echo "			   "
echo "			   "
echo apa yang ingin kamu sapu? 
echo 1. Sapu page cache
echo 2. Sapu inodes dan dentries
echo 3. Sapu page cache, inodes dan dentries
echo "silahkan pilih 1/2/3 : "
read sapu
if [ $sapu == 1 ]; then
	echo "membersihkan page cache";
	sync; echo 1 > /proc/sys/vm/drop_caches
	echo -ne '#####                     (33%)\r'
	sleep 1
	echo -ne '#############             (66%)\r'
	sleep 1
	echo -ne '#######################   (100%)\r'
	echo -ne '\n'
elif [ $sapu == 2 ]; then
	echo "membersihkan inodes dan dentries";
	sudo sync; echo 2 > /proc/sys/vm/drop_caches
	echo -ne '#####                     (33%)\r'
	sleep 1
	echo -ne '#############             (66%)\r'
	sleep 1
	echo -ne '#######################   (100%)\r'
	echo -ne '\n'
elif [ $sapu == 3 ]; then
	echo "membersihkan pagecache, inodes, dan dentries";
	sudo sync; echo 3 > /proc/sys/vm/drop_caches
	echo -ne '#####                     (33%)\r'
	sleep 1
	echo -ne '#############             (66%)\r'
	sleep 1
	echo -ne '#######################   (100%)\r'
	echo -ne '\n'
else 
	echo "anda memasukkan pilihan yang salah"
	exit
fi
