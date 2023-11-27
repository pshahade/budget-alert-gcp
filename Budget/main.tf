module "org_yearly_budget" {
  source                 = "./modules/budget"
  billing_account        = "013C01-5FAD10-EE3998" # TO_DO: Change to Wessling billing ID in production
  projects               = []
  amount                 = "10000"
  display_name           = "wessling-yearly-budget"
  credit_types_treatment = "INCLUDE_ALL_CREDITS"
  calendar_period        = "YEAR"
  alert_spent_percents = [ 0.8, 0.9, 1.0]
}

module "org_monthly_budget" {
  source                 = "./modules/budget"
  billing_account        = "013C01-5FAD10-EE3998" # TO_DO: Change to Wessling billing ID in production
  projects               = []
  amount                 = "10000"
  display_name           = "wessling-monthly-budget"
  credit_types_treatment = "INCLUDE_ALL_CREDITS"
  calendar_period        = "MONTH"
  alert_spent_percents = [ 0.8, 0.9, 1.0]
}

module "ml_project_budget" {
  source                 = "./modules/budget"
  billing_account        = "013C01-5FAD10-EE3998" # TO_DO: Change to Wessling billing ID in production
  projects               = ["mostafa-training"]
  amount                 = "100"
  display_name           = "ml-project-budget"
  credit_types_treatment = "INCLUDE_ALL_CREDITS"
  calendar_period        = "MONTH"
  alert_spent_percents = [0.5, 0.75, 0.95, 1.0]

#   services               = [
#     "6F81-5844-456A", # Compute Engine
#     "A1E8-BE35-7EBC"  # Pub/Sub
#   ]
}


