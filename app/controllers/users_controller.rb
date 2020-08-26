class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def show
    @user = User.friendly.find(params[:id])
    authorize @user
  end

  def index
    @users = policy_scope(User)
  end
end

