require_relative '../config/environment'
require 'date'
require_relative 'CLI.rb'

cli = CLI.new
cli.start

puts "Thank you for using CLIENT."
