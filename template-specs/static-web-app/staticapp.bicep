targetScope = 'resourceGroup'

// The location is passed in as a parameter to the template.
@description('Enter the location of the resource group')
param location string

// The GitHub PAT is passed in as a parameter to the template.
@description('Enter your GitHub PAT')
@secure()
param token string

//  The GitHub repo is passed in as a parameter to the template.
@description('In the format of: https://github.com/reponame')
param repositoryUrl string

// The GitHub branch is passed in as a parameter to the template.
@description('Which branch in the repo are you deploying from? e.g. main')
param branch string

// The app artifact location is passed in as a parameter to the template.
@description('Where are the app artifacts located? e.g. public')
param appArtifactLocation string

// The name prefix is passed in as a parameter to the template.
@description('Enter a unique prefix - e.g. mecweb')
param webAppName string

// Vars
var siteName = '${webAppName}${uniqueString(resourceGroup().id)}'
var sku = 'Free'

// Create the Static Site 

resource staticSite 'Microsoft.Web/staticSites@2022-09-01' = {
  location: location
  name: siteName
  properties: {
    buildProperties:{
      appArtifactLocation: appArtifactLocation
    }
    repositoryUrl: repositoryUrl
    branch: branch
    repositoryToken: token
  }
  sku:{
    name: sku
  }
}

// Output
output siteName string = staticSite.name
output siteUrl string = staticSite.properties.defaultHostname
