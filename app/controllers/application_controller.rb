require './config/environment'

class ApplicationController < Sinatra::Base

  use Rack::Flash
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "i_love_lamp"
  end

  #THIS IS TO INCLUDE AUTHENTICATION OF LOGIN EXCEPT FOR ROUTES LISTED IN THE BRACKETS
  #IF USING, CHANGE ROUTE IN USER CONTROLLER TO SIGNUP FROM NEW, SO AS NOT TO CONFLICT WITH OTHER NEW ROUTES
  # before do
  #   pass if %w[signup login logout].include? request.path_info.split('/')[2]
  #   authentication_required
  # end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end
  end

  #helper functions to check login status
  
  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def authorized_to_edit_profile?(id)
      id.to_i == current_user.id
    end

    def authentication_required
      if !logged_in?        
        flash[:error] = "You must be logged in to view website."
        redirect '/'
      end
    end
  end
end
