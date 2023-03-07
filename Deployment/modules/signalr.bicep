param location string
param resourceNamePrefix string

resource signalr 'Microsoft.SignalRService/signalR@2022-08-01-preview' = {
  name: '${resourceNamePrefix}-signalr'
  location: location
  sku: {
    name: 'Standard_S1'
  }
}

output signalrName string = signalr.name
