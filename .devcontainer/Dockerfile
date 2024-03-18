FROM ruby:3.0.6-bullseye
LABEL description="A development container for working with the flowbite gem."
LABEL version="1.0"

# Build args
ARG PROJECT_NAME=flowbite-rails
ARG USERNAME=developer
ARG TZ=Europe/Moscow

# Install packages
RUN apt update && apt install sudo less

# Setup Moscow Timezone
RUN ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime && \
  echo ${TZ} > /etc/timezone

# Create developer user with sudo
RUN adduser ${USERNAME} --disabled-password --quiet && \
  usermod -aG sudo ${USERNAME} && \
  echo "${USERNAME} ALL=NOPASSWD: ALL" > /etc/sudoers.d/${USERNAME}

USER ${USERNAME}

# Install bunjs
RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.0.31"

# Install ruby utilities
RUN gem install debug:1.9.1 yard:0.9.34

# Parse ruby libraries documentation
RUN yard config --gem-install-yri

# Set working directory
WORKDIR $HOME/$PROJECT_NAME
