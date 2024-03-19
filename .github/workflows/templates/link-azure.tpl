The next thing we need to do do be able to setup our deployer on Azure, is to [connect GitHub and Azure together using OpenID connect](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Clinux#set-up-azure-login-with-openid-connect-authentication). Please follow this link, and create the following secrets:

- client-id: as `AZURE_CLIENT_ID` in [environment secrets](@@REPO@@/settings/environments)
- Client-secret: as `AZURE_CLIENT_SECRET` in [environment secrets](@@REPO@@/settings/environments)
- tenant-id: as `AZURE_TENANT_ID` in [environment secrets](@@REPO@@/settings/environments)
- subscription-id: as `AZURE_SUBSCRIPTION_ID` in [environment secrets](@@REPO@@/settings/environments)

When you saved these secrets, please close this issue.
