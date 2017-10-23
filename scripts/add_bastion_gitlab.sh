#!/bin/bash

if [[ $gitlabTargetBranch == 'SATELLITE-6.2.0' ]];then
  pushd foreman
  echo "gem 'bastion', :git => 'https://${GIT_HOSTNAME}/${GIT_ORGANIZATION}/bastion.git', :branch => '${gitlabTargetBranch}'" >> bundler.d/Gemfile.local.rb
  popd
fi
