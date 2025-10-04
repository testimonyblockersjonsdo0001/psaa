# GCP V2Ray Auto Deploy

Automated V2Ray deployment on Google Cloud Run with GitHub CI/CD.

## Features
- 🚀 Auto-deploy on code push
- ☁️ Serverless on Cloud Run
- ⚡ Fast deployment
- 🔄 Automatic updates

## Setup
1. Fork this repository
2. Connect to Google Cloud Build
3. Deploy automatically

## Manual Deployment
```bash
PROJECT=$(gcloud config get-value project) && \
gcloud builds submit --tag gcr.io/$PROJECT/gcp-v2ray-image && \
