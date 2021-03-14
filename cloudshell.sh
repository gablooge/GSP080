#!/bin/bash

# mkdir gcf_hello_world
cd gcf_hello_world

export PROJECT_ID=$(gcloud info --format='value(config.project)')

gsutil mb -p $PROJECT_ID gs://$PROJECT_ID

gcloud functions deploy helloWorld \
  --stage-bucket $PROJECT_ID \
  --trigger-topic hello_world \
  --runtime nodejs8


