class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    login _url
    redirect_to user  
    else
      flash.now[:danger] = 'Invalid email/password combination'
      #エラー、エラーメッセージを作成する
    renser 'new'
    end
  end

  def destroy
    log_put
    redirect_to root_url
  end
end
