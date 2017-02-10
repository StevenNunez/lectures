# Make Bundler aware
require 'bundler/setup'
# Require the things in the gemfile
Bundler.require

require 'json'

require_relative '../lib/models/movie'
