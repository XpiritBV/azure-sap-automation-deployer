Before you start creating a deployer, you need to set-up credentials. Let's start with creating a GitHub app, so you can get and set variables and credentials, create and update issues, and register a GitHub runner to deploy the SAP environment.

This app needs the following repository permissions only for **this** repository:
  - Administration: Read & Write (Setting up the GitHub Runner on the deployer VM)
  - contents: Read & Write (Creating configuration files, and update workflow with deployer and library)
  - Environments: Read & Write (Creating environments)
  - Secrets: Read & Write (Used to store secrets in the first step, as there's no App configuration yet)
  - Variables: Read & Write (Used to store variables in the first step, as there's no App configuration yet)
  - Workflows: Read & Write (Creating configuration files, and update workflow with deployer and library)

1. You can use the following link to create the app requirements automagically: @@SERVER_URL@@/settings/apps/new?name=@@OWNER@@-sap-on-azure&description=Used%20to%20create%20environments,%20update%20and%20create%20secrets%20and%20variables%20for%20your%20SAP%20on%20Azure%20Setup.&callback=false&request_oauth_on_install=false&public=true&actions=read&administration=write&contents=write&environments=write&issues=write&secrets=write&actions_variables=write&workflows=write&webhook_active=false&url=@@REPO@@

2. Generate a private key
  - Click on `Generate a private key`
  - Save the private key in the [repository secrets](@@REPO@@/settings/secrets/actions) as  `APPLICATION_PRIVATE_KEY`
  - Save the App ID in the [repository secrets](@@REPO@@/settings/secrets/actions) as `APPLICATION_ID`

3. Install the app on the organization
  - Click on `Install App` and select the organization where you want to deploy the SAP deployment.
  - Select this (@@REPO@@) repository to grant privileges to the app.

  **Note**: If you don't have permissions in your organization, your organization administrator will receive a request to install the app.

When this is done, you can close this issue and [create a new environment](@@REPO@@/issues/new?assignees=&labels=create-environment&projects=&template=create_environment.yaml&title=Create+Environment).
