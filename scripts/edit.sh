#!/usr/bin/env bash

pushd Waterdrop-Proxy
git rebase --interactive upstream/upstream
popd
