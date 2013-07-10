#!/bin/bash
echo "source 'https://rubygems.org'"
echo ""
find ../../2013-q2-rails-1/ -name Gemfile | xargs cat | sed 's/^  //' | egrep -v "^(#|source|group|end)" | sort | uniq
