# Kubernetes DEX authenticator with azuread connection

## pre-requisites:
To run this use-case you need:
- An azure account
- External DNS or similar that pushes the ingress resources into the DNS zone
- A kubernetes Ingress controller
- SSL termination at the ingress controller

then the required tools:
- kubectl
- [helm](https://helm.sh)
- [helm diff](https://github.com/databus23/helm-diff)
- [helmfile](https://github.com/roboll/helmfile)
- Make

## Configure the project
- create an [azureAD application](https://docs.pivotal.io/p-identity/1-11/azure-oidc/config-azure.html)
- configure the AAD application to do URL redirect to `https://dex.<DNS_ZONE_NAME>`
- update the `aad-app-conf.env.tmpl` to set the correct values and save it as `aad-app-conf.env`

## How to run
Just run `make run`

Then access the following url: `https://proxy.<DNS_ZONE_NAME>`

## how to destroy
Just run `make destroy`