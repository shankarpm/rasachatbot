#!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
  PORT=process.env.PORT
fi

rasa run -m models --enable-api --cors "*" --debug --port $PORT
