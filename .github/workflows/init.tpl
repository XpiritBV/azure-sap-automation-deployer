Before you start creating a deployer, you need to set-up credentials. Let's start with creating a GitHub app, so you can get and set variables and credentials, create and update issues, and register a GitHub runner to deploy the SAP environment.

This app needs the following repository permissions only for **this** repository:
  - Administration: Read & Write (Setting up the GitHub Runner on the deployer VM)
  - contents: Read & Write (Creating configuration files, and update workflow with deployer and library)
  - Environments: Read & Write (Creating environments)
  - Secrets: Read & Write
  - Variables: Read & Write
  - Workflows: Read & Write (Creating configuration files, and update workflow with deployer and library)

If you have organization owner permissions, you can use the following link and install an app automagically: https://github.com/settings/apps/new?name=sap-on-azure&description=Used%20to%20create%20environments,%20update%20and%20create%20secrets%20and%20variables%20for%20your%20SAP%20on%20Azure%20Setup.&callback=false&request_oauth_on_install=false&public=true&actions=read&administration=write&contents=write&environments=write&issues=write&metadata=read&secrets=write&actions_variables=write&workflows=write&webhook_active=false&events[]=check_run&events[]=check_suite

1. [Create a new GitHub App](https://github.com/settings/apps/new)
  - GitHub App name: SAP Deployer
  - Homepage URL: @@REPO@@
  - Webhook active: No
  - Repository Permissions: Administration, Environments, Secrets, Actions
  - Click on `Create GitHub App`

2. Generate a private key
  - Click on `Generate a private key`
  - Save the private key in the [repository secrets](@@REPO@@/settings/secrets/actions) as  `APPLICATION_PRIVATE_KEY`
  - Save the App ID in the [repository secrets](@@REPO@@/settings/secrets/actions) as `APPLICATION_ID`

3. Install the app on the organization
  - Click on `Install App` and select the organization where you want to deploy the SAP deployment.
  - Select this (@@REPO@@) repository to grant privileges to the app.

  **Note**: If you don't have permissions in your organization, your organization administrator will receive a request to install the app.

When this is done, just close this issue and the next step will be created.
