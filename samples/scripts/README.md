# scripts

## add-users-to-team-from-list.sh

Invites users to a GitHub team from a list.

1. Create a new csv file with the users you want to add, 1 per line
2. Make sure to leave a trailing line at the end of the csv
3. Run: `./add-users-to-team-from-list.sh users.csv <org> <team>`

## ado_workitems_to_github_issues.ps1

Migrate work items from Azure DevOps to GitHub issues - this just links out to a [separate repo](https://github.com/joshjohanning/ado_workitems_to_github_issues)

## create-enterprise-organizations.sh

Loops through a list of orgs and creates them.

## delete-branch-protection-rules.ps1

Delete branch protection rules programmatically based on a pattern.

## delete-repos-from-list.sh

1. Run: `./generate-repos-list.sh <org> > repos.csv`
2. Clean up the `repos.csv` file and remove the repos you **don't want to delete**
3. Run `./delete-repos-from-list.sh repos.csv`
4. If you need to restore, [you have 90 days to restore](https://docs.github.com/en/repositories/creating-and-managing-repositories/restoring-a-deleted-repository)

## generate-repos-list.sh

Generates a list of repos in the organization - has many uses, but the exported repos can be used in the `delete-repos-from-list.sh` script.

Credits to @tspascoal from this repo: https://github.com/tspascoal/dependabot-alerts-helper

1. Run: `./generate-repos.sh <org> > repos.csv`

## generate-users-from-team.sh

Generates a list of users from a team in the organization - has many uses, but the exported users can be used in the `remove-users-from-org.sh` script.

1. Run: `./generate-users-from-team <org> <team> > users.csv`

## remove-users-from-org.sh

Removes a list of users from the organization.

1. Create a list of users in a csv file, 1 per line, with a trailing empty line at the end of the file (or use `./generate-users-from-team <org> <team>`)
2. Run: `./remove-users-from-org.sh <file> <org>`

## update-repo-visibility-from-server-to-cloud.ps1

Compares the repo visibility of a repo in GitHub Enterprise Server and update the visibility in GitHub Enterprise Cloud. This is useful since migrated repos are always brought into cloud as private.

## verify-team-membership.sh

Simple script to verify that a user is a member of a team
