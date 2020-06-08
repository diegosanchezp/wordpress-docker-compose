# Using wordpress image as base 
# https://hub.docker.com/_/wordpress/?tab=description

FROM wordpress:latest

# Install 
# Nodejs https://github.com/nodesource/distributions/blob/master/README.md
# Yarn https://classic.yarnpkg.com/en/docs/install#debian-stable
# And composer https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -; \  
     apt-get install -y nodejs; \
     curl -LO https://getcomposer.org/installer; \
     php installer; \ 
     mv composer.phar /usr/local/bin/composer; \
     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; \
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list; \
     apt-get update; \
     apt-get install yarn; \ 
     apt-get install unzip

