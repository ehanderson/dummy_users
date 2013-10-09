get '/' do
 # Look in app/views/index.erb
 erb :index
end

get '/users_only' do

  erb :users_page
end

get '/create_account' do

  erb :create_account
end

post '/new_user' do

  redirect to '/'
end
