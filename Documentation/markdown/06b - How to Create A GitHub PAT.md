---
Title: 'How to Create A GitHub PAT'
Output: pdf_document
---

# How to Create A GitHub PAT
## This guide will show you how to create a GitHub Personal Access Token (PAT) that will be used in the Azure Template Spec to deploy Azure Static Web Apps from your GitHub account/organization.

### 1. In the upper-right corner of any page, click your profile photo, then click **Settings**.

### 2. In the left sidebar, click <> **Developer settings**.

### 3. In the left sidebar, under  Personal access tokens, click **Tokens (classic)**

### 4. Select Generate new token, then click **Generate new token (classic)**.

### 5. Give your token the name `static-web-app-deploy`.

### 6. To give your token an expiration, select the Expiration drop-down menu, then click a default or use the calendar picker.

### 7. Select the scopes you'd like to grant this token. For this use-case give it: `admin:repo_hook`, `repo` and `workflow`.

### 8. Click **Generate token**.

### 9. Copy the token to your clipboard. For security reasons, after you navigate off the page, you will not be able to see the token again.
