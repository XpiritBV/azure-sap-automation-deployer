The next thing we need to do do be able to setup our deployer on Azure, is to [connect GitHub and Azure together using OpenID connect](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Clinux#set-up-azure-login-with-openid-connect-authentication). Please follow this link, and create the following secrets:

- client-id: as `AZURE_CLIENT_ID` in [repository secrets](@@REPO@@/settings/secrets/actions)
- Client-secret: as `AZURE_CLIENT_SECRET` in [repository secrets](@@REPO@@/settings/secrets/actions)
- tenant-id: as `AZURE_TENANT_ID` in [repository secrets](@@REPO@@/settings/secrets/actions)
- subscription-id: as `AZURE_SUBSCRIPTION_ID` in [repository secrets](@@REPO@@/settings/secrets/actions)

When you saved these secrets, please close this issue and [create a new Environment](@@REPO@@/issues/new?assignees=&labels=create-environment&projects=&template=create_environment.yaml&title=Create+Environment)
