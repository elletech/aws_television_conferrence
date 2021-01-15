FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
RUN brew install rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
RUN echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
RUN source ~/.bash_profile
RUN rbenv install 2.7.0 \
    && rbenv global 2.7.0
#
# More information: https://www.gitpod.io/docs/config-docker/
