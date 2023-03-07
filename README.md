# ApimIaC

Sample IaC to demo APIM integration with REST / wss APIs.

# Please follow the steps below to manually deploy the resources:

## Prequisites

 - [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)
  
 - [Bicep](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install)

 - [.NET CLI](https://learn.microsoft.com/en-us/dotnet/core/tools/)

## Deploy Azure resources

 - Open the source code in VSCode. Start a terminal and navigate to the ***Deployment*** folder.

 - Sign in to your Azure account from the Visual Studio Code terminal.
~~~script
 az login
~~~

 - Set the default subscription
~~~script
 az account set --subscription {your-subscription-ID}
~~~
 - Create resource group
~~~script
 az group create --name {resource-group-name} --location {location-name}
~~~
 - Set default resource group
~~~script
 az configure --defaults group={resource-group-name}
~~~
 - Deploy bicep template
~~~script
az deployment group create --template-file main.bicep 
~~~
 - Verify deployment
~~~script
az deployment group list --output table
~~~

