FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
RUN brew install rbenv \
    && sudo apt-get update \
    && sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties \
    && sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev \
#     && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile \
#     && echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile \
#     && source ~/.bash_profile
#     && rbenv install 2.7.0 \
#     && rbenv global 2.7.0
#
# More information: https://www.gitpod.io/docs/config-docker/
