FROM ruby:2.4

# Install capybara-webkit deps
RUN apt-get update \
    && apt-get install -y xvfb qt5-default libqt5webkit5-dev \
                          gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y nodejs

# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -\
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn 
		
# Install our dependencies and rails
RUN \
	gem install bundler \
	&& gem install rails \
	&& mkdir -p /home/test

ENV RAILS_ENV development
ENV RACK_ENV development

WORKDIR /home/test
ADD ./test_project /home/test
RUN bundle install --jobs=4 --retry=3 && bundle exec rails webpacker:install
