require 'pry'
enable :sessions

get '/' do
 session[:authetic] = nil
 erb :index
end

get '/users_only' do
  if session[:authetic] == true
    erb :users_page
  else
    erb :not_a_user
  end
end

get '/create_account' do

  erb :create_account
end

post '/login' do  
  @user = User.authenticate(params[:email], params[:password])
  @user.nil? ? session[:authetic] = false : session[:authetic] = true

  redirect to '/users_only'
end
