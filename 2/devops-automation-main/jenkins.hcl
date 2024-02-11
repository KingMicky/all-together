# Installing Java
```
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
```

# Installing jenkins on ubuntu
```
sudo apt-get update
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```

# after installation
```
systemctl cat jenkins
journalctl -u jenkins.service
```

# To start jenkins
```
sudo systemctl start jenkins
sudo systemctl status jenkins
```


# If i'm having issue with 8080
```
systemctl edit jenkins
```
# then input the following:
[Service]
Environment="JENKINS_PORT=8081"