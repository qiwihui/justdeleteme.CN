#!/bin/sh

setup_git() {
  git config --global user.email "qwh005007@gmail.com"
  git config --global user.name "qiwihui via Travis CI"
}

commit_website_files() {
  git checkout -b gh-pages
  git add docs
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/qiwihui/justdeleteme.CN.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages 
}

setup_git
commit_website_files
upload_files