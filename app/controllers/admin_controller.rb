class AdminController < ApplicationController
  def index
    if current_user.try(:admin?)
            @users = User.all
    end
  end
  
end
