FROM ruby:3.0.0

RUN apt-get update -qq \
  && apt-get install -y nodejs postgresql-client

ADD . /myapp
WORKDIR /myapp
RUN bundle install

EXPOSE 3999
CMD bundle exec rails s -b 0.0.0.0 -p 3000
