# from the dropdown at the top of Cloud Console:
export GCLOUD_PROJECT="mediasoup-vidya" 
# from Step 2.2 above:
export REPO="mediasoupvidya"
# the region you chose in Step 2.4:
export REGION="asia-south2"
# whatever you want to call this image:
export IMAGE="mediasoupimage"

# use the region you chose above here in the URL:
export IMAGE_TAG=${REGION}-docker.pkg.dev/$GCLOUD_PROJECT/$REPO/$IMAGE

# Build the image:
docker build --pull --rm -f "DockerFile" -t $IMAGE_TAG "."
# docker build -t $IMAGE_TAG -f path/to/Dockerfile --platform linux/x86_64 .
# Push it to Artifact Registry:
docker push $IMAGE_TAG