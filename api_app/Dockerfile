FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs
COPY ./rails/Gemfile /app/Gemfile
COPY ./rails/Gemfile.lock /app/Gemfile.lock
RUN gem install bundler:2.1.4
WORKDIR /app
RUN bundle install
COPY ./rails /app
EXPOSE 4000
COPY ./start.sh /
RUN chmod 744 /start.sh
CMD ["/start.sh"]