#!/bin/bash
#Installls OSbuddy, though it will not work and will need modified; mainly used to automate installing dependencies
yes | gdebi /headless/dockerfiles/osbuddy.deb
#removes OSbuddy starting script and replaces it with one that will work
rm /usr/bin/osbuddy
echo "#!/bin/bash
java -Xss2m -Xmx512m -XX:+UseG1GC -XX:CompileThreshold=1500 -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dnofork=true ${1/beta/-Dbranch=development} -jar /usr/share/osbuddy/OSBuddy.jar">/usr/bin/osbuddy
#sets proper permission for osbuddy
chmod a+x /usr/bin/osbuddy
#removes jar file and replaces it
cd /usr/share/osbuddy
rm OSBuddy.jar
wget wget http://cdn.rsbuddy.com/live/f/loader/OSBuddy.jar 
#sets proper permissions
chmod a+w OSBuddy.jar

