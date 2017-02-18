require 'sinatra'
require_relative 'Name_Input.erb'

get '/' do
	
erb :Name_Input, :locals => {:Name => '', :results => ''}
end