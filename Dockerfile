FROM ruby:2.5.5

WORKDIR /usr/src/app

RUN gem install bundler

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "4000"]
