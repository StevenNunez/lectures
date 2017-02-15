require 'bundler/setup'
Bundler.require

DB = {}
DB[:conn] = SQLite3::Database.new("db/school_development.db")
DB[:conn].results_as_hash = true

$:.unshift(".")
Dir["lib/models/*.rb"].each {|f| require f}
