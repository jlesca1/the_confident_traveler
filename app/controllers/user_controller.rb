#index
get '/users/' do
  @user = User.all
  erb :'users/index'
end

#new
get '/users/new' do
  "This is the new"
  #erb :'users/new'
end

#create
post '/users' do
  @users = Users.new

  # if @user.save
  #   redirect '/users'
  # else
  #   erb :'users/new'
  # end
end

#show
get '/users/:id' do
  puts params
  @user = User.find(params[:id])
  erb :'users/show'
end

#edit
get '/users/:id/edit' do
"This is the edit"
  #erb :'users/edit'
end

#update
put '/users/:id' do
"This is the update"
  #erb :'users'
end

#delete
delete '/users/:id' do
"This is the delete"
  #erb :'users'
end