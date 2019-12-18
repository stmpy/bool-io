FROM ruby:2.5.7

WORKDIR /usr/src/app

RUN gem install rails

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "4000"]
