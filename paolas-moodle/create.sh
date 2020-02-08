#! /bin/bash
cd "$(dirname "$0")"
gcloud compute instances create --machine-type=n1-standard-2 \
    --image-project=debian-cloud --image-family=debian-10 --preemptible \
    --metadata-from-file startup-script=startup.sh \
    $1
