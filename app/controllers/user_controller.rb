class UserController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@characters = Character.where('user_id = ?',"#{@user.id}")
  	@worlds = World.where('user_id = ?',"#{@user.id}")
  	@sessions = Session.joins(charactersessions: :characters).where('user_id = ?',"#{@user.id}")
  end
end
