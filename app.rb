# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
require './app/adapters/controllers/user_controller'
Dotenv.load

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH', nil] }

post '/users' do
  { result: UsersController.create(params) }.to_json
end
