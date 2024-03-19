The next thing we need to do do be able to setup our deployer on Azure, is to [connect GitHub and Azure together using OpenID connect](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Clinux#set-up-azure-login-with-openid-connect-authentication). Please follow this link, and create the following secrets:

- Application (client) ID: as `AZURE_CLIENT_ID` in [environment secrets](@@REPO@@/settings/environments)
- Client secret: as `AZURE_CLIENT_SECRET` in [environment secrets](@@REPO@@/settings/environments)
- Directory (tenant) ID: as `AZURE_TENANT_ID` in [environment secrets](@@REPO@@/settings/environments)
- Subscription ID: as `AZURE_SUBSCRIPTION_ID` in [environment secrets](@@REPO@@/settings/environments)

If you need to deploy the Control Plane Web Application credentials create an app registration as described [here](https://learn.microsoft.com/en-gb/azure/sap/automation/configure-webapp?tabs=linux#create-an-app-registration).

- App registration ID: as `APP_REGISTRATION_APP_ID` in [environment secrets](@@REPO@@/settings/environments)
- App registration password: as `WEB_APP_CLIENT_SECRET` in [environment secrets](@@REPO@@/settings/environments)

When you saved these secrets, please close this issue.
