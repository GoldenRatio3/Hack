FROM hhvm/hhvm-proxygen:latest

# install dependencies
RUN apt-get update && \
    apt-get install -y \
        curl \
        wget \
        git \
        zsh \
        bash-completion \
        neovim && \
    apt-get clean

# Install Oh My Zsh (non-interactive)
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && \
    chsh -s $(which zsh)

# Set zsh as the default shell
CMD ["zsh"]

RUN rm -rf /var/www
ADD . /var/www

EXPOSE 80
EXPOSE 8080
