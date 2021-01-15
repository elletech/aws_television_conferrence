FROM gitpod/workspace-full
USER gitpod

RUN touch ~/.bash_profile
RUN brew install rbenv

RUN RUN mv /bin/sh /bin/sh_tmp && ln -s /bin/bash /bin/sh

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
RUN echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
RUN source ~/.bashrc

RUN rbenv install 2.7.0
RUN rbenv global 2.7.0

RUN rm /bin/sh && mv /bin/sh_tmp /bin/sh
