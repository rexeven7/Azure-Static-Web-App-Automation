// The following template creates a resource group and deploys a Static Web App to it. 

// The targetScope is the scope of the deployment. In this case, it is subscription.
targetScope = 'subscription'

// The following parameters are required to deploy the Static Web App:

// The resourceGroupName is the name of the resource group you want to create and then deploy the Static Web App too.
@description('Enter a resource group name - e.g. vuln, NOT rg-vuln')
param resourceGroupName string

// The location is the Azure region where you want to deploy the Static Web App.
@description('Enter a location - e.g. westus')
param location string = 'eastus2'

// The repositoryUrl is the URL of the GitHub repository you want to deploy from.
@description('In the format of: https://github.com/account/reponame')
param gitHubRepoURL string

// The namePrefix is the prefix of the name of the Static Web App.
@description('Enter a name prefix - e.g. vuln')
param webAppName string

// The branch is the branch in the repo you want to deploy from.
@description('Which branch in the repo are you deploying from? e.g. main')
param gitHubBranch string = 'main'

// You will need to create a GitHub Personal Access Token (PAT) with the following scopes:
// repo, workflow, admin:repo_hook
// https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token
@description('Enter your GitHub PAT')
@secure()
param gitHubToken string

// The appArtifactLocation is the location of the app artifacts in the repo.
@description('Where are the app artifacts located? Should be "/"')
param appArtifactLocation string = '/'

// The following variable is used to create the resource group name.
var name = 'rg-${resourceGroupName}'

// The following modules are used to deploy the Resource Group and Static Web App:

// Bicep that deploys a resource group
resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: name
  location: location
}

// Bicep module that deploys a static web app
module staticapp './staticapp.bicep' = {
  scope: rg
  name: 'staticAppDeploy'
  params: {
    token: gitHubToken
    repositoryUrl: gitHubRepoURL
    webAppName: webAppName
    branch: gitHubBranch
    appArtifactLocation: appArtifactLocation
    location: location
  }
}

// Outputs
output siteName string = staticapp.outputs.siteName
output siteUrl string = staticapp.outputs.siteUrl
