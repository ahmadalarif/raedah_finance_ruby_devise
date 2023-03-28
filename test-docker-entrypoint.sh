#! /bin/sh
set -echo

echo "ENVIRONMENT: $RAILS_ENV"

bundle checl || bundle install

bundle exec ${@}

