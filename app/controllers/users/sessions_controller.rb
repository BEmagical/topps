class Users::SessionsController < Devise::SessionsController
  layout "layouts/auth"

  def index
  	@user = User.all
  end

  def show
  	@user = User.find(params[:id])
  end
end