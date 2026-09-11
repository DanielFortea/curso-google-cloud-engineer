gcloud iam service-accounts create dev-deployer --display-name "Deployer SA"

gcloud projects add-iam-policy-binding curso-gcp-engineer --member="serviceAccount:dev-deployer@curso-gcp-engineer.iam.gserviceaccount.com" --role="roles/compute.viewer"