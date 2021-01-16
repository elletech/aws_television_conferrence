FROM gitpod/workspace-full
USER gitpod

##### Ruby ver 2.7.0の環境構築
RUN touch ~/.bash_profile
RUN brew install rbenv

# Dockerfileのビルドはbashではなくshで実行されるため、sourceコマンドを使おうとするとエラーになる
# shをbashへのシンボリックリンクで置き換えて、Dockerfileの終了時に元に戻すことで対応する。
# 参考 https://qiita.com/lilacs/items/4d4e3f169a04560dee76
RUN sudo mv /bin/sh /bin/sh_tmp && sudo ln -s /bin/bash /bin/sh



RUN rbenv install 2.7.0
RUN rbenv global 2.7.0

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
RUN echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

RUN sudo rm /bin/sh && sudo mv /bin/sh_tmp /bin/sh
