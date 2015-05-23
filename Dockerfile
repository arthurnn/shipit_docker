FROM ruby:2.2.2

ENV RAILS_ENV production

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# for a JS runtime
RUN apt-get install -y nodejs

ENV APP_HOME /var/shipit
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME
RUN bin/rake railties:install:migrations

RUN bundle exec rake assets:precompile --trace
CMD bin/rails s -p 3000 -b '0.0.0.0'