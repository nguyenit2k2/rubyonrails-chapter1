class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index]
    def index
      username = params[:username]
      password = params[:password]
      if username == 'hoangnguyen' && password == '123'
        render json: { message: 'Login successful' }
      else
        render json: { error: 'Invalid username or password' }, status: :unauthorized
      end
    end
  end
  