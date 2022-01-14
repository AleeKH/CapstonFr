name: Deploy CDK

on:
  push:
    branches:
      - master
    pull_request:
      branches:
      -master

jobs:
  build:  
    runs-on: ubuntu-latest

    steps:
    - name: checkout code
      uses: action/checkout@v2 
      with:
        fetch-depth: 1
  
    - name: Deloy
      uses: udondan/cdk-nodejs@v0.3.1
      with:
        AWS_ACCESS_KEY_ID: ${{ secret.AWS_ACCESS_KEY_ID}}
        AWS_SECRET_ACCESS_KEY: ${{ secret.AWS_SECRET_ACCESS_KEY}}
