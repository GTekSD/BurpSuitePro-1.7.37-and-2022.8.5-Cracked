#!/bin/bash
#install gnome-terminal
if [[ ! -e /bin/gnome-terminal  || ! -e /usr/bin/gnome-terminal ]]
 then
    sudo apt install gnome-terminal
 fi

if [[ -e /home/$USER/BurpSuitePro ]]
 then 
 echo "BurpSuitpro is installed"
 read -p  "Crack Now ?[Y,n] : " crak
if [[ "$crak" == "n" || "$crak" == "N" ]]
 then
exit 0;
else
 cp keygen.jar ~/BurpSuitePro/
 cp loader.jar ~/BurpSuitePro/
 gnome-terminal -- bash -c "java -jar /home/$USER/BurpSuitePro/keygen.jar ; exec bash" &
 java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:"/home/$USER/BurpSuitePro/loader.jar" -noverify -jar "/home/$USER/BurpSuitePro/burpsuite_pro.jar"
 cp /home/$USER/BurpSuitePro/BurpSuitePro /home/$USER/BurpSuitePro/BurpSuitePro_org
 echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:\"/home/$USER/BurpSuitePro/loader.jar\" -noverify -jar \"/home/$USER/BurpSuitePro/burpsuite_pro.jar\"" > /home/$USER/BurpSuitePro/BurpSuitePro ; 
fi
fi


if [[ ! -e /home/$USER/BurpSuitePro ]]
then
    echo "BurpSuitpro is not installed "
    echo "Please install at the /home/$USER/"
    read -p "Install now ? [Y,n]:" ins 
if [[ $ins == "N" || $ins ==  "n" ]]
then
    exit 0;
else
    clear
    echo "Please install at the /home/$USER/" 
    wget  https://portswigger-cdn.net/burp/releases/download?product=pro\&version=2022.8.5\&type=Linux 
    mv ./download\?product\=pro\&version\=2022.8.5\&type\=Linux ./installer.sh
    chmod +x ./installer.sh
    ./installer.sh
    echo "Rerun Script"
fi

fi

