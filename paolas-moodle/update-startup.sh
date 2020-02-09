#! /bin/bash
cd "$(dirname "$0")"
gcloud compute instances add-metadata $1 \
        --metadata-from-file startup-script=startup.sh
