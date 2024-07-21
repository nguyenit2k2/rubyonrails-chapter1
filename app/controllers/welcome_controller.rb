class WelcomeController < ApplicationController
  def index
    render json: { message: 'Hello, welcome to the simple API!' }
  end
end