FROM ruby:3.0.0

RUN apt-get update -qq \
  && apt-get install -y nodejs postgresql-client

ADD . /myapp
WORKDIR /myapp
RUN bundle install

RUN RAILS_ENV=$RAILS_ENV bin/rails assets:precompile

EXPOSE 3999
CMD RAILS_ENV=$RAILS_ENV bundle exec rails s -b 0.0.0.0 -p 3000
