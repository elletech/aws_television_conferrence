FROM gitpod/workspace-full
USER gitpod

RUN touch ~/.bash_profile
RUN brew install rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
RUN echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
RUN source ~/.bash_profile
RUN rbenv install 2.7.0 \
    && rbenv global 2.7.0
