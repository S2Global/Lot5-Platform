class UserController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@characters = Character.where('user_id = ?',"#{@user.id}")
  end
end