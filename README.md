# Installation
#### These steps need CircleCI CLI 
[See more](https://circleci.com/docs/2.0/local-cli/)
##### Mac and Linux:
```bash
$ curl -fLSs https://circle.ci/cli | bash
```
##### With home brew
```bash
$ brew install circleci
```
# Example usage
##### Pack circleci comamnds & jobs to a single config, see more commands in [package.json](./package.json) in scripts section
```bash
$ yarn run monorepo
```
##### Use preset orbs to your .circleci/config.yml
```yaml
version: 2.1
orbs:
  my_orb: masaruz/monorepo@x.x.x
executors:
  my_executor: my_orb/node
commands:
  my_command: my_orb/setup_gcloud_command
jobs:
  my_job: my_orb/workspaces_validate
  another_job:
    executor: my_executor
    steps:
      - my_command:
          base64_service_account: "..."
          project_id: "..."
          region: "..."
```