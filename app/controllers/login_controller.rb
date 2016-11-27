class LoginController < ApplicationController
  def login
      #login session
      session[:user_id] = nil
      if request.post?#login action
          #authenticate user
          user = User.authenticate(params[:account], params[:password])
          #login successfully
          if user
              session[:user_id] = user_id#store user_id to session
              redirect_to(:action => "index")#redirect_to index.html.erb
          
          #login fail => error msg
          else
              flash[:notice] = "Invalid user/password combination"
          end
      end
  end

  def logout
  end

  def list_users
  end
end
