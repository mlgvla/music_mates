class UsersController < ApplicationController

  # GET: /signup
  get '/user/new' do
    # if !logged_in?
    #     erb :'users/signup'
    # else
    #     redirect to :'/users'
    # end
    erb :'/users/new'
  end
  
  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # GET: "/users/login"
  get "/users/login" do
    erb :"/users/login.html"
  end

  # POST: /users
  post "/users" do
    #CHECK THAT ALL FIELDS ARE FILLED IN - ELSE RETURN TO NEW PAGE - VALIDATION!!!
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    @user.save
    session[:user_id] = @user.id
    #PROBABLY REDIRECT TO SHOW PAGE /users/:id
    redirect :"/users/#{@user.id}" 
  end

  post "/users/login" do
    #CHECK THAT ALL FIELDS ARE FILLED IN - ELSE RETURN TO LOGIN PAGE - VALIDATION!!
    @user = User.find_by(email: params[:email])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect :"/users/#{@user.id}"
    else
      redirect :"/users/login"
    end
  end
  
  # GET: /users/5
  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    @user = User.find(params[:id])
    @instruments = Instrument.all
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    binding.pry
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
