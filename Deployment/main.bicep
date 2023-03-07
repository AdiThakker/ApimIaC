param location string = 'westus'
param resourceNamePrefix string = 'apim_resource'

module apim './modules/apim.bicep' = {
  name: 'apim'
  params: {
    location: location
    resourceNamePrefix: resourceNamePrefix
  }
}

module signalr './modules/signalr.bicep' = {
  name: 'signalr'
  params: {
    location: location
    resourceNamePrefix: resourceNamePrefix
  }
}
