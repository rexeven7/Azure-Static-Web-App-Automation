---
Title: '04 - How to Create an Azure Static Web App Template Repo'
Output: pdf_document
---

# How to Setup Static Web App Bicep Repo
## This guide will show you how to setup the repo that contains a preconfigured Azure Static Web App. The app has a single landing page, with an imbedded iframe to display your Power BI Report. The webiste also contains a pre-configured `staticwebapp.config.json` that is necessary to restrict access to the site. In future steps, you will update this preconfigured site to suit your use case. Once setup this repo will be used to create an Azure Template Spec that will be used to deploy Azure Static Web Apps from your GitHub account/organization.

###  1. Navigate to the GitHub repo you want to clone.
###  2. Click the green **Code** button.
###  3. Click **Download ZIP**.
###  4. Unzip the file.
###  5. Navigate to GitHub and create a new repo. Name it: `static-webapp-template`
###  6. Navigate to the repo you just created.
###  7. Click the green **Code** button.
###  8. Click **Upload files**.
###  9. Drag and drop the files from the unzipped folder into the upload window.
###  10. Click **Commit changes**.