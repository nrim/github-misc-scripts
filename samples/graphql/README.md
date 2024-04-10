# graphql

There are some GraphQL queries here, but **most of them have been moved to `gh cli` queries [here](../gh-cli/)**.

See the [how to do pagination](how-to-do-pagination.md) page for more information on how to do pagination.

Also great resource [here](https://github.com/github/platform-samples/tree/master/graphql/queries) for additional GraphQL queries.

## create-organization.sh

Creates the organization - you just need to pass in the enterprise ID (obtained [above](https://github.com/joshjohanning/github-misc-scripts/tree/main/graphql#list-enterprise-idjson)) along with billing email, admin logins, and organization name.

[Documentation](https://docs.github.com/en/graphql/reference/mutations#createenterpriseorganization)

## download-latest-version-from-github-packages.sh

Script to download a file from the latest version of a GitHub Package

[Documentation](https://docs.github.com/en/graphql/reference/objects#package)

## download-specific-version-from-github-packages

Script to download a file from a specific version of a GitHub Package

[Documentation](https://docs.github.com/en/graphql/reference/objects#package)

## get-enterprise-id.sh

Get the enterprise ID used for other GraphQL calls. Use the URL slug not the friendly name of the Enterprise.

[Documentation](https://docs.github.com/en/graphql/reference/queries#enterprise)

## get-issue-id.sh

Get an issue ID - needed for transferring an sisue, example

[Documentation](https://docs.github.com/en/graphql/reference/objects#issue)

## get-organization.sh

Gets an organization

[Documentation](https://docs.github.com/en/graphql/reference/queries#organization)

## get-repository-id.sh

Gets a repository ID

[Documentation](https://docs.github.com/en/graphql/reference/queries#repository)

## get-saml-identities-in-enterprise.sh

Retrieves the SAML linked identity of a user in a GitHub organization.

PAT scope required: `admin:enterprise`

[Documentation](https://docs.github.com/en/graphql/reference/objects#enterpriseidentityprovider)

## get-saml-identities-in-org.sh

Retrieves the SAML linked identity of a user in a GitHub organization.

PAT scope required: `admin:org`

[Documentation](https://docs.github.com/en/graphql/reference/objects#organizationidentityprovider)

## transfer-issue.sh

Mutation to transfer an issue to a new repository

[Documentation](https://docs.github.com/en/graphql/reference/mutations#transferissue)
