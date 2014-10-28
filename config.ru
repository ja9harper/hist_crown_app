require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'] || 'development')

require './config/boot'

map('/') { run RootController }
