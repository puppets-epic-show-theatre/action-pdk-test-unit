# action-pdk-test-unit

This action runs `pdk test unit` on your codebase and fails the step if there are test failures.

## Usage

To use the action add the following step to your workflow file (e.g. `.github/workflows/main.yml`)

```yaml
name: Run unit tests

on:
  - push
  - pull_request

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: Clone repository
      uses: actions/checkout@v2

    - name: Run unit tests and save report to junit xml
      uses: puppet-enterprise-support-team/action-pdk-test-unit@v1
```
