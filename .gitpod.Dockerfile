FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
RUN brew install rbenv \
    && rbenv install 2.7.0 \
    && rbenv global 2.7.0
#
# More information: https://www.gitpod.io/docs/config-docker/
