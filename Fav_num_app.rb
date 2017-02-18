require 'sinatra'

get '/' do
	
erb :name_input
end

post '/name' do
	name_backend = params[:name_input]
	erb :age_input, locals => {:username => name_backend}
end

post '/age' do
	name_backend = params[:name_input]
	age_backend	= params[:age_input]
	erb :fav_nums, :locals => {:username => name_backend, :age => age_backend}
end

post '/your_favorite_numbers' do
	name_backend = params[:name_input]
	age_backend = params[:age_input].to_i
	num1_backend = params[:num1_fav_input].to_i
	num2_backend = params[:num2_fav_input].to_i
	num3_backend = params[:num3_fav_input].to_i
	sum = (num1_backend + num2_backend + num3_backend)

	results = 'less than'
		if (sum > age_backend)
			results = 'greater than'
		elsif (sum ==age_backend)
			results = 'equal to'
		else
			results
		end

	erb :total, :locals => {username => name_backend, :age => age_backend, :fav1 => num1_backend, :fav2 => num2_backend, :fav3 => num3_backend, :sum => sum, :results => results}
end