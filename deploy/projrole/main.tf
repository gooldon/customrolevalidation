#custom role IAM assignment test

provider "google" {
}

#Project IAM Policy Success Scenario

resource "google_project_iam_binding" "projtfdeploy" {
  project = "tfdeploy-221013"
  role    = "projects/tfdeploy-221013/roles/custom_role_proj_s"
  members = [
      "serviceAccount:customrolesa@tfdeploy-221013.iam.gserviceaccount.com",
    ]
}

#Project IAM Policy Failure Scenario

resource "google_project_iam_binding" "projtfdeploy" {
  project = "tfdeploy-221013"
  role    = "projects/tfdeploy-221013/roles/custom_role_proj_f"
  members = [
      "serviceAccount:customrolesa@tfdeploy-221013.iam.gserviceaccount.com",
    ]
}