FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
RUN apt install -y ruby2.7 ruby2.7-dev build-essential zlib1g-dev git
RUN gem install bundler

RUN bundle config --global silence_root_warning 1
COPY Gemfile Gemfile.lock ./
RUN bundle install
