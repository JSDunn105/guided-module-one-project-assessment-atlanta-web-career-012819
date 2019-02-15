require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/training.db')
config.active_record.logger = nil
require_all 'lib'
