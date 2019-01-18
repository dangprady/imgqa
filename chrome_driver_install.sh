# Install ChromeDriver.
if which curl >/dev/null; then
	CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`
else
	echo "curl is required, please install curl"
	exit 1
fi

if [[ $(uname) == 'Linux' ]]; then
	os_name='linux64'
elif [[ $(uname) == 'Darwin' ]]; then
	os_name='mac64'
else
	echo "OS chould not be recognized Exiting........"
        exit 1
fi
wget -N http://chromedriver.storage.googleapis.com/${CHROME_DRIVER_VERSION}/chromedriver_${os_name}.zip -P ~/
unzip ~/chromedriver_${os_name}.zip -d ~/
rm ~/chromedriver_${os_name}.zip
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver

