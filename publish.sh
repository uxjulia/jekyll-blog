#!/bin/sh

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

cd /Users/Home/Dropbox/!jekyll/_site
/Users/Home/Dropbox/!jekyll/git pull

source /Users/jaredwolff/.rvm/environments/ruby-1.9.3-p429
rake deploy