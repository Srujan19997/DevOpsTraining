Add-AzureRmAccount 

Set-AzureRmContext -SubscriptionName "Free Trial"


// Creating a new azure resource group (optional ,can use other resource groups)
New-AzureRmResourceGroup -Name dvFTP -Location "East US"

//Testing a template
Test-AzureRmResourceGroupDeployment -ResourceGroupName firstapp010 -TemplateFile C:\Users\Srujan.Goregey\Desktop\Notes\azuredeploy.json -TemplateParameterFile C:\Users\Srujan.Goregey\Desktop\Notes\azuredeploy.parameters.json


New-AzureRmResourceGroupDeployment -Name firstapp010storage -ResourceGroupName firstapp010 -TemplateFile C:\Users\Srujan.Goregey\Desktop\Notes\azuredeploy.json -TemplateParameterFile C:\Users\Srujan.Goregey\Desktop\Notes\azuredeploy.parameters.json
