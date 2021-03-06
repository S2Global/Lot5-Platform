class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show, :edit, :update, :destroy]

  # GET /abilities
  # GET /abilities.json
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @abilities = Ability.all
  end

  # GET /abilities/1
  # GET /abilities/1.json
  def show
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  # GET /abilities/new
  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @character  = Character.find(params[:character_id])
    @ability = Ability.new
  end

  # GET /abilities/1/edit
  def edit
    @character = Character.find(params[:character_id])
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  # POST /abilities
  # POST /abilities.json
  def create
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @ability = Ability.new(ability_params)
    @character  = Character.find(params[:character_id])

    respond_to do |format|
      if @ability.save
        format.html { redirect_to @character, notice: 'Ability was successfully created.' }
        format.json { render :show, status: :created, location: @ability }
      else
        format.html { render :new }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abilities/1
  # PATCH/PUT /abilities/1.json
  def update
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @character  = Character.find(params[:character_id])
    respond_to do |format|
      if @ability.update(ability_params)
        format.html { redirect_to @character, notice: 'Ability was successfully updated.' }
        format.json { render :show, status: :ok, location: @ability }
      else
        format.html { render :edit }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abilities/1
  # DELETE /abilities/1.json
  def destroy
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @character  = Character.find(params[:character_id])
    @ability.destroy
    respond_to do |format|
      format.html { redirect_to @character, notice: 'Ability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability
      @ability = Ability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ability_params
      params.require(:ability).permit(:name, :phase, :character_id, :range, :effect, :flair)
    end
end
