#!/usr/bin/env bash

flutter create --org=com.bitsandbytes.com $1
cd $1
code .
flutter pub upgrade --major-versions
