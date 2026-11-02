FROM ruby:3.4.12

RUN dpkg --configure -a

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential \
  sqlite3

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler --version "$(tail -n 1 Gemfile.lock | tr -d " ")" && \
  bundle install --jobs 4 --retry 5

COPY . .

EXPOSE 5000
