#!/usr/bin/env bash

case $(git rev-parse --abbrev-ref HEAD) in
  master)
      git describe --tags
      ;;
  develop)
      echo "develop"
      ;;
  *)
    echo $(git describe --tags)
esac
