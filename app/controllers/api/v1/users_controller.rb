class Api::V1::UsersController < ApplicationController




  def create
    @user = User.new(username: params[:username], password: params[:password])
    if @user.save
      jwt = issue_token({user_id: @user.id})
      render json: {user: @user, jwt: jwt}
    end
  end




end
