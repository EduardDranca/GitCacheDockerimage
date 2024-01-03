FROM sapmachine:lts-jdk-ubuntu-22.04
RUN mkdir ~/bin
RUN apt-get update && \
    apt-get install -y git
RUN apt-get install -y wget
RUN wget https://github.com/seeraven/gitcache/releases/download/v1.0.12/gitcache_v1.0.12_Ubuntu22.04_amd64 && \
    mv gitcache_v1.0.12_Ubuntu22.04_amd64 ~/bin/gitcache && \
    chmod +x ~/bin/gitcache
RUN ln -s gitcache ~/bin/git && \
    echo "export PATH=$HOME/bin:$PATH" >> ~/.bashrc
