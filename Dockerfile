FROM ubuntu:20.04

WORKDIR /root

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  git \
  neovim

COPY . .config/nvim
RUN nvim --headless +PlugInstall +qa

CMD ["bash"]
