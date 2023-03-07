param location string
param resourceNamePrefix string

resource apim 'Microsoft.ApiManagement/service@2021-01-01-preview' = {
  name: '${resourceNamePrefix}-apim'
  location: location
  properties: {
    publisherEmail: 'admin@${resourceNamePrefix}-apim.com'
    publisherName: '${resourceNamePrefix} API Management'
    sku: {
      name: 'Developer'
      capacity: 1
    }
  }
}

output apimName string = apim.name
