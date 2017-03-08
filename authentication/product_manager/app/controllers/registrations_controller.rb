class RegistrationsController < ApplicationController
  def new
  end

  def create
    account = Account.create!(username: params[:username], password: params[:password])
    session[:account_id] = account.id
    redirect_to root_path
    # Create a user with a username and password
    # sign them in and redirect to the home page
  end
end
