#!/usr/bin/env bash

cp Gemfile.lock.fordocker Gemfile.lock
docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll   -it -p 4000:4000 jekyll/jekyll
