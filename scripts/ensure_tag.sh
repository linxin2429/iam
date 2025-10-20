#!/usr/bin/env bash

# Copyright 2025 Deng Xinlin <dengxinlin2429@gmail.com>. All rights reserved.



version="${VERSION}"
if [ "${version}" == "" ];then
  version=v`gsemver bump`
fi

if [ -z "`git tag -l ${version}`" ];then
  git tag -a -m "release version ${version}" ${version}
fi
