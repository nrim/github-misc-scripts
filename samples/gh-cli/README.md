# gh cli

## CLI Setup

### Install

```bash
brew install gh # install gh cli on mac with brew
brew upgrade gh # upgrade
```

Other OS's can find instructions [here](https://cli.github.com/manual/installation)

### Authentication 

```bash
# start interactive setup
$ gh auth login

# authenticate to github.com by reading the token from a file
$ gh auth login --with-token < mytoken.txt

# authenticate from standard input
$ echo ${{ secrets.GITHUB_TOKEN }} | gh auth login --with-token

# authenticate from environment variable
$ export GH_TOKEN=${{ secrets.GITHUB_TOKEN }}
```

See the [docs](https://cli.github.com/manual/gh_auth_login) for further information.

## add-enterprise-organization-member.sh

Adds a user from an Enterprise into an org. See: [Documentation](https://docs.github.com/en/graphql/reference/mutations#addenterpriseorganizationmember)

## add-ip-allow-list.sh

Adds an IP to an enterprise's or organization's [IP allow list](https://docs.github.com/en/enterprise-cloud@latest/organizations/keeping-your-organization-secure/managing-security-settings-for-your-organization/managing-allowed-ip-addresses-for-your-organization).

Use the [get-enterprise-id.sh](./get-enterprise-id.sh) or [get-organization-id.sh](./get-organization-id.sh) script to get the owner ID.

See the [docs](https://docs.github.com/en/graphql/reference/mutations#createipallowlistentry) for further information.

## add-user-to-team.sh

Adds (invites) a user to an organization team

## change-repo-visibility.sh

Change a repository visibility to internal, for example

## create-enterprise-organization.sh

Creates an enterprise organization - you just need to pass in the enterprise ID (obtained [via](./get-enterprise-id.sh)) along with billing email, admin logins, and organization name

## create-repo-from-template.sh

Create a new repo from a repo template - note that it only creates as public or private, if you want internal you have to do a subsequent call (see `change-repo-visibility.sh`)

## delete-release.sh

Deletes a release from a repository - need the [ID](#get-releasessh) of the release

## delete-repo.sh

Deletes a repo - also works if the repository is locked from a failed migration, etc.

May need to run this first in order for the gh cli to be able to have delete repo permissions:

```
gh auth refresh -h github.com -s delete_repo
```

## enable-actions-on-repository.sh

Enable actions on repository - similar to [API example](./../api/enable-actions-on-repository.sh), but using `gh cli`

## get-actions-permissions-on-repository.sh

Gets the status of Actions on a repository (ie, if Actions are disabled)

## get-apps-installed-in-org.sh

Get the slug of the apps installed in an organization.

## get-commits-since-date.sh

Gets the commits of since a certain date - date should be in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format, ie: `since=2022-03-28T16:00:49Z`

## get-org-team-members.sh

Gets a list of members on a team

## get-earliest-restricted-contribution-date.sh

In a 1 year block, return the date of the first non-public contribution

> The date of the first restricted contribution the user made in this time period. Can only be non-null when the user has enabled private contribution counts.

See also: [Another example](https://github.com/orgs/community/discussions/24427#discussioncomment-3244093)

## get-enterprise-id.sh

Get the enterprise ID used for other GraphQL calls. Use the URL slug of the Enterprise as the input.

Adding `-H X-Github-Next-Global-ID:1` per the documentation here to get the new ID format:

- https://github.blog/changelog/2022-11-10-graphql-legacy-global-id-deprecation-message/
- https://docs.github.com/en/graphql/guides/migrating-graphql-global-node-ids

## get-enterprise-ip-allow-list.sh

Gets the current IP allow list for an enterprise.

See the [docs](https://docs.github.com/en/graphql/reference/objects#enterpriseownerinfo) for further information.

## get-enterprise-organizations.sh

Gets all organizations for a given enterprise. Handles pagination.

## get-enterprise-roles-in-organizations-all-roles.sh

Queries every organization in an enterprise and returns whether the user is a member or a member + admin of the organization.

## get-enterprise-roles-in-organizations-with-named-role.sh

Queries the enterprise for all organizations given the specified role (e.g.: which organizations is the user an admin of)

## get-org-team-members.sh

Gets the members of a team

## get-org-team.sh

Gets a team

## get-organization-id.sh

Get the organization ID used for other GraphQL calls. Use the login of the Organization as the input.

Adding `-H X-Github-Next-Global-ID:1` per the documentation here to get the new ID format:

- https://github.blog/changelog/2022-11-10-graphql-legacy-global-id-deprecation-message/
- https://docs.github.com/en/graphql/guides/migrating-graphql-global-node-ids

## get-organization-ip-allow-list.sh

Gets the current IP allow list for an organization.

See the [docs](https://docs.github.com/en/graphql/reference/objects#ipallowlistentry) for further information.

## get-organization-members.sh

Gets a list of members and their role in an organization

## get-package-download-url.sh

Gets a the dynamic package download URL for a given package type, name, and version.

## get-package-download-url-for-latest-version

Retrieve the download URL for the latest version of a package in GitHub Packages. See: [Documentation](https://docs.github.com/en/graphql/reference/objects#package)

## get-package-download-url-for-specific-version.sh

Retrieve the download URL for a specific version of a package in GitHub Packages. See: [Documentation](https://docs.github.com/en/graphql/reference/objects#package)

## get-releases.sh

Gets a list of releases for a repository

## get-repo.sh

Gets details about a repo

## get-repos-not-using-actions.sh

Get repos not using actions, by files committed in the `.github/workflows` directory

## get-repos-using-actions.sh

Get repos using actions, by files committed in the `.github/workflows` directory

## get-repository-topics.sh

Gets a list of topics for a repository

## get-saml-identities-in-enterprise.sh

Retrieves the SAML linked identity of a user in a GitHub Enterprise.

May need to run this first in order for the gh cli to be able to retrieve the SAML information for organizations:

```
gh auth refresh -h github.com -s admin:enterprise
```

## get-saml-identities-in-org.sh

Retrieves the SAML linked identity of a user in a GitHub organization.

May need to run this first in order for the gh cli to be able to retrieve the SAML information for organizations:

```
gh auth refresh -h github.com -s admin:org
```

## get-user-id.sh

Retrieves the ID of a user for other GraphQL calls

## rename-repo.sh

Renaming a repo

## set-ip-allow-list-setting.sh

Sets the IP allow list to enabled/disable for an enterprise or organization. You can't enable the IP allow list unless the IP running the script is in the list.

See the [docs](https://docs.github.com/en/graphql/reference/mutations#updateipallowlistenabledsetting) for further information.

## sso-credential-authorizations.sh

Retrieves a list of users who have SSO-enabled personal access tokens in an organization.

## update-enterprise-owner-organizational-role.sh

Adds your account to an organization in an enterprise as an owner, member, or leave the organization.
