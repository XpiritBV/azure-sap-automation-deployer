#!/usr/bin/env bash

 # Remove the current values
yq -i 'del(.on.workflow_dispatch.inputs.deployer.options)' .github/workflows/01-deploy-control-plane.yaml
yq -i 'del(.on.workflow_dispatch.inputs.library.options)' .github/workflows/01-deploy-control-plane.yaml

# Add the new values
for deployer in $(ls ${GITHUB_WORKSPACE}/WORKSPACES/DEPLOYER); do
  yq -i '.on.workflow_dispatch.inputs.deployer.options += ["'${deployer}'"]' .github/workflows/01-deploy-control-plane.yaml
done

for library in $(ls ${GITHUB_WORKSPACE}/WORKSPACES/LIBRARY); do
  yq -i '.on.workflow_dispatch.inputs.library.options += ["'${library}'"]' .github/workflows/01-deploy-control-plane.yaml
done

if git diff --exit-code; then
  echo "No changes to the deployment workflow."
  exit 0
fi

git add .github/workflows/01-deploy-control-plane.yaml
git commit -m "Updated the deployment workflow on workspace changes."
git push
