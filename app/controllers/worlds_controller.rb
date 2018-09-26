class WorldsController < ApplicationController
  before_action :set_world, only: [:show, :edit, :update, :destroy]

  # GET /worlds
  # GET /worlds.json
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @worlds = World.all
  end

  # GET /worlds/1
  # GET /worlds/1.json
  def show
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @world = World.find(params[:id])
    @world_characters = Character.where('world_id = ?', params[:id])
    @world_sessions = Session.where('world_id = ?', params[:id])
  end

  # GET /worlds/new
  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @world = World.new
  end

  # GET /worlds/1/edit
  def edit
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  # POST /worlds
  # POST /worlds.json
  def create
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @world = World.new(world_params)

    respond_to do |format|
      if @world.save
        format.html { redirect_to @world, notice: 'World was successfully created.' }
        format.json { render :show, status: :created, location: @world }
      else
        format.html { render :new }
        format.json { render json: @world.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worlds/1
  # PATCH/PUT /worlds/1.json
  def update
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    respond_to do |format|
      if @world.update(world_params)
        format.html { redirect_to @world, notice: 'World was successfully updated.' }
        format.json { render :show, status: :ok, location: @world }
      else
        format.html { render :edit }
        format.json { render json: @world.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worlds/1
  # DELETE /worlds/1.json
  def destroy
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @world.destroy
    respond_to do |format|
      format.html { redirect_to worlds_url, notice: 'World was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_world
      @world = World.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def world_params
      params.require(:world).permit(:name, :user_id, :description)
    end
end
