FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
COPY --chown=gitpod:gitpod .ruby-version /tmp
RUN echo "rvm_gems_path=/home/gitpod/.rvm" > ~/.rvmrc
RUN bash -lc "rvm install ruby-$(cat /tmp/.ruby-version) && rvm use ruby-$(cat /tmp/.ruby-version) --default"
RUN echo "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc

# RUN brew install rbenv
# RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# RUN echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
# RUN source ~/.bash_profile
# RUN rbenv install 2.7.0 \
#     && rbenv global 2.7.0
#
# More information: https://www.gitpod.io/docs/config-docker/
