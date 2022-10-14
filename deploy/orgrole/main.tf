#custom role IAM assignment test

provider "google" {
}

#Org Policy Success Scenario

resource "google_organization_iam_binding" "orgtfdeploy" {
  org_id  = "716543262869"
  role    = "organizations/716543262869/roles/custom_role_org_s"
  members = [
      "serviceAccount:customrolesa@tfdeploy-221013.iam.gserviceaccount.com",
    ]
}

#Org Policy Failure Scenario

resource "google_organization_iam_binding" "orgtfdeploy" {
  org_id  = "716543262869"
  role    = "organizations/716543262869/roles/custom_role_org_f"
  members = [
      "serviceAccount:customrolesa@tfdeploy-221013.iam.gserviceaccount.com",
    ]
}