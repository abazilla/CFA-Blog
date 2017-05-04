class AdminController < ApplicationController
  before_action :auth_user

  def index
    @users = User.all
    @posts = Post.all
  end

  def auth_user
    if current_user.user_type != "admin"
      redirect_to root_path, notice: 'Access DENIED'
    end
  end

end
