class WelcomeController < ApplicationController
  def index
    render json: {status: 200, message: "Controller is Working!"}
  end
end
