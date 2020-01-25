class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      if cookies[:last_visited_path].present?
        redirect_to cookies[:last_visited_path]
      else
        render :new
      end
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end

end
