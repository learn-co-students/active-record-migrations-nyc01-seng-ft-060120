#Contains things we want to read and make available to our Ruby app when it starts 
#Below are gems 
require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup' #requiring gems in Gemfile
Bundler.require #giving our program access to them 


ActiveRecord::Base.establish_connection( #establishes connection to database
    :adapter => "sqlite3", #database is created in migration via SQLite3
    :database => "db/artists.sqlite"
  )

  #no longer need SQL to create the table - ActiveRecord does that 

require_relative "../artist.rb" #Read the artist.rb file 

