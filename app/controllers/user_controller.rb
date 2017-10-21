#index
get '/users/' do
  @users = User.all
  erb :'users/index'
end

#new
get '/users/new' do
  erb :'users/new'
end

#create
post '/users' do
  puts params

  @user = User.create(params[:user])
  redirect '/users/'

  # if @user.save
  #   redirect '/users'
  # else
  #   erb :'users/new'
  # end
end

#show
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

#edit
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

#update
patch '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect "/users/#{@user.id}"
end

#delete
delete '/users/:id' do
  User.find(params[:id]).destroy!
  redirect "/users"
end