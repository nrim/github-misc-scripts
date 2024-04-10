#!/bin/bash

gh api --paginate /orgs/BA-Cloud/teams/ba-cloud-ca-sre/members --jq='.[] | [.login] | join(",")' # the join removes the "[" and "]" from the results
