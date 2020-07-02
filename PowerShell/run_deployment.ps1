<# the flow of building and running an arm template from powershell
Prerequisetes:
    1. Connect to azure account
    2. Create a resource group if not already done

Run the arm template:
    Store the template file location in a param
    Use a unique name for each updated iteration of the template so that you can tell the difference between deployments in Azure

#>

# Connect to account
Connect-AzAccount

# Create resource group
New-AzResourceGroup `
    -Name myResourceGroup `
    -Location "UK South"

# run deployment template
# Change the deployment name each time so that you can defferentiate differnet builds of the deployment
$templateFile = "azuredeploy.json"
New-AzResourceGroupDeployment `
  -Name blanktemplate `
  -ResourceGroupName myResourceGroup `
  -TemplateFile $templateFile
