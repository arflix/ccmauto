
#####################################################################################
#                             \\\|///                                                                                                              #
#                          \\~~ ~~//                                                                                                           #
#                         (  @ @  )                                                                                   	        	        #
#    +---------oOOO------(_)---------oOOO--------+                                                             		        #
#   |                                                        |          					        #
#   |                                                        |                                                			        #
#   |--------------------------------------------------------|                                               			        #
#   |               Installation source               |                                                                                     #
#   |   ----->    www.newcccam.net      <-----|                                              			        #
#   |   ----->    www.cccamcs.com      <-----|                                              			        #
#   |                         2020                        |                    				                      #
#   |       Automated Installation script        |                                          			        #
#   |               Written by: groupsat	      |                             		                                    #
#   |                www.multics.info                |                           				        #
#   |                  ooO                                |                      				        #  
#  +-----------------(   )-Ooo--------------------------+                					        #
#                      \ ( (   )                                                                				        #
#                       \_)) / 								        #
#                          (_/                                                                   			        #
#                                                                                                 			        #
#                  Purpose:  MultiCS auto install on a bare Ubuntu and Debian  system.  	                      #
#                                                                                            	                 		        #
#####################################################################################"

echo "MultiCS auto install on a bare Ubuntu and Debian system"
echo -e "\e[5m Please Wait ...\e[0m"

server1="www.newcccam.net/install_multics/autoinstall.sh"
server2="www.cccamcs.com/install_multics/autoinstall.sh"

if wget -q "$server1";
then
wget ${server1} -O /tmp/autoinstall.sh || echo "Error: Couldn't connect to ${server1}"
chmod 755 /tmp/autoinstall.sh
/tmp/./autoinstall.sh
rm /tmp/autoinstall.sh
echo ""

elif wget -q "$server2";
then
wget ${server2} -O /tmp/autoinstall.sh || echo "Error: Couldn't connect to ${server2}"
chmod 755 /tmp/autoinstall.sh
/tmp/./autoinstall.sh
rm /tmp/autoinstall.sh
echo ""

else

echo -e "\033[31m There was a problem connecting to the servers !! \e[0m"
echo -e "\e[33m Try again later \e[0m"

fi

exit 0


