# ABDocker

AwesomeBot: https://github.com/BitQuote/AwesomeBot/wiki

You will need to apply for a self-hosting token from BitQuote: http://self-host.awesomebot.xyz/

Prerequisites:
* Docker https://docs.docker.com/engine/installation/
* Git

1) Download auth.json and fill in the values https://github.com/BitQuote/AwesomeBot/wiki/Setup
2) Download config.json for modifiable configurations outside of the container
3) Run the bot attached on first run 
```
docker run -it --rm -v /path/to/auth.json:/node_modules/AwesomeBot/auth.json \
-v /path/to/config.json:/node_modules/AwesomeBot/data/config.json \
-p 0.0.0.0:80:8080 \
--name your_container \
-t taylorsmcclure/abdocker:latest
```
5) Verify bot joins and responds to @YourBot ping
6) Run detatched
```
docker start -d your_container
```
7) Once you have finished your configurations via the web portal or in config.json, remember to export your configs to backup.
