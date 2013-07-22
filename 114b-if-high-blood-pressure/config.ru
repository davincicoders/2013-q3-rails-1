require 'rubygems'
require 'bundler'

Bundler.require

require './controller.rb'

run Sinatra::Application
