gcloud iam service-accounts create dev-deployer --display-name "Deployer SA"

gcloud projects add-iam-policy-binding gcp-cloud-engineer-curso-01 --member="serviceAccount:dev-deployer@gcp-cloud-engineer-curso-01.iam.gserviceaccount.com" --role="roles/compute.viewer"