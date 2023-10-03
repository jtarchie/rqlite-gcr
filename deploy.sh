#!/bin/bash

gcloud run deploy rqlite \
  --min-instances=0 \
  --max-instances=1 \
  --source . \
  --region "us-west1" \
  --set-env-vars "S3_ACCESS_KEY_ID=$S3_ACCESS_KEY_ID" \
  --set-env-vars "S3_SECRET_ACCESS_KEY_ID=$S3_SECRET_ACCESS_KEY_ID" \
  --set-env-vars "S3_ENDPOINT=$S3_ENDPOINT" \
  --set-env-vars "S3_BUCKET_REGION=$S3_BUCKET_REGION" \
  --set-env-vars "S3_BUCKET_NAME=$S3_BUCKET_NAME" \
  --set-env-vars "DATABASE_NAME=$DATABASE_NAME" \
