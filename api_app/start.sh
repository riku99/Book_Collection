#!/bin/bash
bundle exec rails db:create
bundle exec rails db:migrate
exec bundle exec unicorn_rails -c ./config/unicorn.rb