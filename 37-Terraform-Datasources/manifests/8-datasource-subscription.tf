# Datasources
#
data "azurerm_subscription" "current" {
  
}

## TEST DATASOURCES using OUTPUTS

# 1. My currnet Subscription Display

output "current_subscription_display_name" {
  value = data.azurerm_subscription.current.display_name
}
# 2. My current Subscription Id

output "current_subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}

# 3. My Current subscription spending Limit

output "current_subscription_spending_limit" {
  value = data.azurerm_subscription.current.spending_limit
}


# make use of information defined outside of Terraform