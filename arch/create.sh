#! /bin/bash
gcloud compute instances create arch --preemptible --image-project=arch-linux-gce --image-family=arch
