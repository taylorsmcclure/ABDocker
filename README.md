# ABDocker
Unofficial Dockerfile for AwesomeBot by BitQuote: https://github.com/BitQuote/AwesomeBot

AwesomeBot: https://github.com/BitQuote/AwesomeBot/wiki

You will need to apply for a self-hosting token from BitQuote: http://self-host.awesomebot.xyz/

Prerequisites:
* Docker https://docs.docker.com/engine/installation/
* Git

1) Download auth.json and fill in the values https://github.com/BitQuote/AwesomeBot/wiki/Setup
2) Download config.json for modifiable configurations outside of the container
3) $ docker pull taylorsmcclure/awesomebot:latest
4) Run the bot attached on first run 
```
docker run -it --rm -v /path/to/auth.json:/node_modules/AwesomeBot/auth.json \
-v /path/to/config.json:/node_modules/AwesomeBot/data/config.json \
-p 0.0.0.0:80:8080 \
--name your_container \
-t taylorsmcclure/awesomebot:1.0
```
5) Verify bot joins and responds to @YourBot ping
6) Run detatched
```
docker run -d -v /path/to/auth.json:/node_modules/AwesomeBot/auth.json \
-v /path/to/config.json:/node_modules/AwesomeBot/data/config.json \
-p 0.0.0.0:80:8080 \
--name your_container \
-t taylorsmcclure/awesomebot:1.0
```
