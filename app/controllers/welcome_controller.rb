class WelcomeController < ApplicationController
  def index
    return redirect_to dashboard_index_path if user_signed_in?
  end
end
