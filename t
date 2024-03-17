#!/bin/bash

git checkout develop-python
git checkout develop -- .github/workflows/python_build.yaml
git add .github/workflows/python_build.yaml
git commit -m "sync python_build from develop"

git checkout develop-java
git checkout develop-java -- .github/workflows/java_build.yaml
git add .github/workflows/java_build.yaml
git commit -m "sync java_build from develop"

git checkout develop
