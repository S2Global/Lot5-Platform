class HomeController < ApplicationController
  def index
  	@characters = Character.order({ played: :asc })
  	@characters_deceased = Character.where('alive = ?',false)
  end
end
