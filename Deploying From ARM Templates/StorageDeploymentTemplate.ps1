//Deploying a  storage account using ARM templates.


$Add-AzureRmAccount 

$Set-AzureRmContext -SubscriptionName  "IDC Backup Subscription - Visual Studio Enterprise"


// Creating a new azure resource group (optional ,can use other resource groups)
$New-AzureRmResourceGroup -Name StorageTemplateTest  -Location "East US"

//Testing a template
$Test-AzureRmResourceGroupDeployment -ResourceGroupName StorageTemplateTest -TemplateFile C:\Users\Srujan.Goregey\Desktop\Notes\json\azureStorageTemplate.json  -debug

New-AzureRmResourceGroupDeployment  -ResourceGroupName StorageTemplateTest -TemplateFile C:\Users\Srujan.Goregey\Desktop\Notes\json\azureStorageTemplate.json
