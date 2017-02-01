class AdminController < ApplicationController
  def index
    if current_user.try(:admin?)
            @users = User.all
    end
  end
  
  def user_lock
        @user = User.find(params[:id])
        @user.lock_access!
        flash[:notice] = @user.email + "をロックしました。"
        redirect_to action: 'index'
  end

  def user_unlock
        @user = User.find(params[:id])
        @user.unlock_access!
        flash[:notice] = @user.email + "のロックを解除しました。"
        redirect_to admin_index_path
  end
  
end
