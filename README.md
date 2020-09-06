# New Project

This is a brand new repository that has been created.

## Out of the Box Features

1. **Issue Templates** - Default created issue templates
    1. _Bug Report_ - Create a bug report issue
    2. _Feature Request_ - Create feature request/enhancement
    3. _Dev Ops Request_ - Create a new development operations request, this can be sever management, user access item, workflow automation enhancement, or a report of issues going on with cloud infrastructure
2. **Workflow**
    1. _Auto Assign Issue to Project_ - Will link a project whenever a new issue is created and whenever a pull-request is made in master or development, the GitHub secret: `AUTOMATE_ISSUES_PULL_REQUESTS` created at: [GitHub Token Creation](https://github.com/settings/tokens/new) will allow for the linking of organization projects repo specific projects can just use the `GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}` that comes standard. By default this template links to: [Default Automation Project](https://github.com/orgs/Cassio-is-Great/projects/4). **Please update this as soon as possible.**
    2. _Auto Assign_ - Using [Auto Assign](https://github.com/apps/auto-assign) (must be added to your organization or GitHub user) this repos default behavior is for it to assign the creator of a pull request to the author of the pull request

### Created by:
[Cassio Hudson](https://github.com/Cassioblu55)
