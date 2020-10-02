run:
	source aad-app-conf.env && helmfile apply

destroy:
	source aad-app-conf.env && helmfile destroy