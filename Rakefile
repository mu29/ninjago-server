require "sinatra/activerecord/rake"
require 'dotenv/tasks'

namespace :db do
  task :load_config => :dotenv do
    require "./app"
  end
end
