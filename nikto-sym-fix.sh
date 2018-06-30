#!/data/data/com.termux/files/usr/bin/bash
#SOMEColors:-D
#BY bensh4
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
reset='\033[0m'
printf "$yellow CHECKING FOR OLD COPIES.."
sleep 3
	if [ -e $HOME/nikto ];then
		echo "one found" 
		rm -rf  /data/data/com.termux/files/home/nikto/

	fi

echo "DONE IT!!"

sleep 3

#CHECKING FOR OLD SYM  COPIES!!

printf "CHECKING /bin.."

	if [ -e $PREFIX/bin/nikto.pl ]; then

		echo "ONE FOUND!!.."
		echo "REMOVING IT..."
		rm /data/data/com.termux/files/usr/bin/nikto.pl
	fi
	
sleep 3
echo "COMPLETED!..."
sleep 3
printf "$red \n"

 +-+-+-+-+-+ +-+-+-+ +-+-+-+
 |n|i|k|t|o| |s|y|m| |f|i|x|
 +-+-+-+-+-+ +-+-+-+ +-+-+-+
                   by-bensh4
 "
printf "INSTALLING DEPENDENCIES FOR NIKTO..\n"
printf "INSTALLING PERL..\n"
sleep 2
echo "$red"
	#INSTALLING PERL PACKAGE
	pkg install perl -y
printf "$red \n"
echo "
 +-+-+-+-+-+-+-+ 
 |W|O|R|K|I|N|G|........ 
 +-+-+-+-+-+-+-+ 
 "
#cloning the repo..
git clone https://github.com/bensh4/nikto
echo "$yellow"
echo "
 +-+-+-+-+
 |D|O|N|E|.
 +-+-+-+-+
 
"
sleep 3
echo "$blue"

#installing the perl package..

echo "working on a config file..."
sleep 2
cd /data/data/com.termux/files/home/nikto/program
mv nikto.conf /data/data/com.termux/files/home/
cp /data/data/com.termux/files/home/nikto/program/nikto.pl /data/data/com.termux/files/home/
echo "$red"

printf "$blue LINKING... \n"

#symlinkin now..

ln -s /data/data/com.termux/files/home/nikto/program/nikto.pl /data/data/com.termux/files/usr/bin

sleep 3

echo "$blue 
 +-+-+-+ +-+-+-+-+-+
 |A|L|L| |D|O|N|E|!|
 +-+-+-+ +-+-+-+-+-+
 "
 echo "$red"
    printf "$red DO YOU WANT TO INSTALL Net::SSLeay:: ? \n
     FOR GIVING SSL SUPPORT IN NIKTO? SELECT YOUR CHOICE.\n" 
    echo "1=yes(recommended) || 2=no"

#SHALL WE INSTALL THE SSLeay in NIKTO? 'd be interesting!'

   select opt in "yes" "no"; do
     case $opt in
    	 	yes) echo "This process would take min 10min"
    	 		 sleep 3
    	 		cpan install Net::SSLeay::Handle -y -local::lib; break;;    
     		no) echo "It Doesn't installed.."; break;;
     esac
    done

sleep 2
 
printf "$yellow Now you can execute nikto.pl from anywhere..! \n"

printf "$red GITHUB:bensh4 \n"

printf "$blue YOUTUBE:> CYBER HUNK <||> DEEP CODING \n"

printf "$yellow now starting nikto.............. \n"

sleep 5

printf "$red"

nikto.pl
