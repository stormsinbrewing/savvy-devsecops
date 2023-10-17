# Contributing Guidelines

This repository is open-source and always open to contributions.

We acknowledge that best practices are always evolving and thus its humanely impossible for a single person/organization to always be on foot and be the flag-bearer.

This repository intends to be the best source for budding tech enthusiasts and we welcome contributions in all forms.

## Code of Conduct

This project adheres to the [CNCF Code of Conduct][code-of-conduct]. By participating, you are expected to honor this code.

## Security Issues?

See [SECURITY](SECURITY.md).

## Get Started!

So...feel ready to jump in? Let's do this. 👏🏻💯

### Cloning the Repository

Ok. So you're gonna want some code right? Go ahead and fork the repository into your own GitHub account and clone that code to your local machine. GitHub's [Fork a repo](https://docs.github.com/en/get-started/quickstart/fork-a-repo) documentation has a great step by step guide if you are not sure how to do this.

After you have cloned the repository, you should run the following commands once to set things up for development:

```bash
cd savvy-devsecops  # change to root directory of project
yarn install  # fetch dependency packages - may take a while
```

### Serving the Example App

Open a terminal window and start the web app by using the following command from the project root. Make sure you have run the above mentioned commands first.

```bash
yarn dev
```

## Coding Guidelines

All code is formatted with `prettier` using the configuration in the repo. If possible we recommend configuring your editor to format automatically, but you can also use the `yarn prettier --write <file>` command to format files.

A consistent coding style is included via [EditorConfig](https://editorconfig.org/) with the file [`.editorconfig`](.editorconfig) at the root of the repo. Depending on your editor of choice, it will either support it out of the box or you can [download a plugin](https://editorconfig.org/#download) for the config to be applied.

## Developer Certificate of Origin

The commits signature has been adopted via [Developers Certificate of Origin (DCO)](https://developercertificate.org/). A DCO is a lightweight way for a developer to certify that they wrote or otherwise have the right to submit code or documentation to a project.

To certify the code you submit to the repository you'll need to add a `Signed-off-by` line to your commits.

`$ git commit -s -m 'Awesome commit message'`

Which will look something like the following in the repo;

```
Awesome commit message

Signed-off-by: Jane Smith <jane.smith@example.com>
```

- In case you forgot to add it to the most recent commit, use `git commit --amend --signoff`
- In case you forgot to add it to the last N commits in your branch, use `git rebase --signoff HEAD~N` and replace N with the number of new commits you created in your branch.
- If you have a very deep branch with a lot of commits, run `git rebase -i --signoff $(git merge-base -a master HEAD)`, double check to make sense of the commits (keep all lines as `pick`) and save and close the editor. This should bulk sign all the commits in your PR. Do be careful though. If you have a complex flow with a lot of branching and re-merging of work branches and stuff, merge-base may not be the right solution for you.

Note: If you have already pushed your branch to a remote, you might have to force push: `git push -f` after the rebase.

### Using GitHub Desktop?

If you are using the GitHub Desktop client, you need to manually add the `Signed-off-by` line to the Description field on the Changes tab before committing:

```
Awesome description (commit message)

Signed-off-by: Jane Smith <jane.smith@example.com>
```

In case you forgot to add the line to your most recent commit, you can amend the commit message from the History tab before pushing your branch (GitHub Desktop 2.9 or later).

## Submitting a Pull Request

When you've got your contribution working, tested, and committed to your branch it's time to create a Pull Request (PR). If you are unsure how to do this GitHub's [Creating a pull request from a fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork) documentation will help you with that. Once you create your PR you will be presented with a template in the PR's description that looks like this:

```md
## Hey, I just made a Pull Request!

<!-- Please describe what you added, and add a screenshot if possible.
     That makes it easier to understand the change so we can :shipit: faster. -->

#### :heavy_check_mark: Checklist

<!--- Please include the following in your Pull Request when applicable: -->

- [ ] Added or updated documentation
- [ ] Tests for new functionality and regression tests for bug fixes
- [ ] Screenshots attached (for UI changes)
- [ ] All your commits have a `Signed-off-by` line in the message. ([more info](https://github.com/backstage/backstage/blob/master/CONTRIBUTING.md#developer-certificate-of-origin))
```

## Review Process

Once you've submitted a Pull Request (PR) the various bots will come out and do their work:

- assigning reviewers from the various areas impacted by changes in your PR
- adding labels to help make reviewing PRs easier
- checking for missing changesets or confirming them
- checking for commits for their DCO (Developer Certificate of Origin)
- kick of the various CI builds

Once these have been completed it's just a matter of being patient as the reviewers have time they will begin to review your PR. When the review begins there may be a few layers to this but the general rule is that you need approval from one of the core maintainers and one from the specific area impacted by your PR. You may also have someone from the community review your changes, this can really help speed things up as they may catch some early items making the review for the maintainers simpler. Once you have the two (2) approvals it's ready to be merged, this task is also done by the maintainers.

### Review Tips

Here are a few things that can help as you go through the review process:

- You'll want to make sure all the automated checks are passing as generally the PR won't get a review if something like the CI build is failing
- PRs get automatically assigned so you don't need to ping people, they will be notified and have a process of their own for this
- If you are waiting for a review or mid-review and your PR goes stale one of the easiest ways to clear the stale bot is by simply rebasing your PR
- There are times where you might run into conflict with the `yarn.lock` during a rebase, to help with that make sure your `master` branch is up to date and then in your branch run `git checkout master yarn.lock` and then run `yarn install`, this will get you a conflict free `yarn.lock` file you can commit
- If Vale finds issues with your documentation but it's a code reference you can fix it by putting backticks (`) around it. Now if it is a special word or maybe a name there are two ways you can fix that by adding it to the list of accepted words in the [accept.txt file](https://github.com/backstage/backstage/blob/master/.github/vale/Vocab/Backstage/accept.txt) and them committing that change

### Merging to Main

For those contributors who have earned write access to the repository, when a pull request is approved, in general we prefer the author of the PR to perform the merge themselves. This allows them to own accountability for the change and they likely know best how or when to address pending fixes or additional follow-ups. In this way, we all help contribute to the project's successful outcomes.
