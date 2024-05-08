# KUBECONFORM
Kubernetes manifest validation tool.

## Version
KUBECONFORM VERSION 
0.4.13

GO VERSION
1.22.3

## Usage

### Basic Example

```yml
name: CI

on:
  - push

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Trigger Deploy
        uses: choosemylo/kubeconform@v1
        with:
          args: <deployment_name>.yaml
```
