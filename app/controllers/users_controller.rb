class UsersController < ApplicationController
  
  # GET: /signup
  # get '/user/new' do
  #   if !logged_in?
  #       erb :'users/signup'
  #   else
  #       redirect to :'/users'
  #   end
  #   erb :'/users/new'
  # end
  
  # # GET: /users
  # get "/users" do
  #   erb :"/users/index.html"
  # end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # GET: "/users/login"
  get "/users/login" do
    erb :"/users/login.html"
  end

  # GET:  "/users/logout"
  get "/users/logout" do
    session.clear
    redirect "/"
  end
  
  # POST: /users
  post "/users" do
    #CHECK THAT ALL FIELDS ARE FILLED IN - ELSE RETURN TO NEW PAGE - VALIDATION!!!
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], visibility: "public")
    if @user.save
      session[:user_id] = @user.id
      flash[:message] = "Welcome to Music Mates, #{@user.first_name}!"
      redirect :"/users/#{@user.id}"
    else
      flash[:error] = "Account creation failed:  #{@user.errors.full_messages.to_sentence}."
      redirect :"/users/new"
    end
  end

  post "/users/login" do
    #CHECK THAT ALL FIELDS ARE FILLED IN - ELSE RETURN TO LOGIN PAGE - VALIDATION!!
    @user = User.find_by(email: params[:email])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:message] = "Welcome back to Music Mates, #{@user.first_name}!"
      redirect :"/users/#{@user.id}"
    else
      flash[:error] = "Login failed:  Please try again."
      redirect :"/users/login"
    end
  end
  
  # GET: /users/5
  get "/users/:id" do
    authentication_required
    @user = User.find(params[:id])
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    authentication_required
    if !authorized_to_edit_profile?(params[:id])
      flash[:error] = "You are only authorized to edit your own profile."
      redirect "/"
    else
      @user = User.find(params[:id])
      @instruments = Instrument.all
      erb :"/users/edit.html"
    end
  end

  # PATCH: /users/5
  patch "/users/:id" do
    #bug fix - no checked checkbox results in no array being passed in params.  This creates an empty array.
    if !params[:user].keys.include?("instrument_ids")
      params[:user][:instrument_ids] = []
    end
    @user = User.find(params[:id])
    if @user.update(params[:user])
      redirect "/users/#{@user.id}"
    else
      flash[:error] = "Profile update failed: #{@user.errors.full_messages.to_sentence}."
      redirect "/users/#{@user.id}/edit"
    end
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    authentication_required
    @user = User.find(params[:id])
    @user.destroy
    flash[:message] = "Your account has successfully been deleted"
    redirect "/"
  end
end
