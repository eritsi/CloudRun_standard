# https://medium.com/dsights/streamlit-deployment-on-google-cloud-serverless-container-platform-1a8330d29062
# https://github.com/bbjishnu/streamlit_gcp_cloud_run
# cd example_dp/
docker build -t testHiguchi:v1.0 . -f dash.Dockerfile
gcloud init
gcloud services enable run.googleapis.com containerregistry.googleapis.com
gcloud auth configure-docker
gcloud config set compute/region asia-northeast1
gcloud config set compute/zone asia-northeast1-a
docker tag testHiguchi:v1.0 gcr.io/dxs-nagayama-sandbox/testHiguchi:v1.0
docker push gcr.io/dxs-nagayama-sandbox/testHiguchi:v1.0
gcloud run deploy testHiguchi --image gcr.io/dxs-nagayama-sandbox/testHiguchi:v1.0 \
--platform managed --allow-unauthenticated --region asia-northeast1 --memory 4Gi \
--timeout=1500 --cpu 4 --concurrency 1000