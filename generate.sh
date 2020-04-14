#!/usr/bin/env bash

if [ ! -f .env ]; then
  echo "\033[0;31m.env file not found!\033[0m\nPlease copy .env.example to .env and fill in the values."
  exit 1
fi

student_id=$1

if [ -z "$student_id" ]; then
  echo "\033[0;31mStudent ID not passed!\033[0m\nUsage: ./generate.sh STUDENT_ID"
  exit 1
fi

eval $(egrep -v '^#' .env)

# Use "printf" instead of "echo -n" for compatibility / portability
# https://apple.stackexchange.com/a/173873/36202
signature=$(printf ${school_id}${student_id} | openssl dgst -sha256 -hex -hmac ${secret_key})
echo "https://education.github.com/student/verify?school_id=${school_id}&student_id=${student_id}&signature=${signature}"