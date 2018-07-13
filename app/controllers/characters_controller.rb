class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)
    if @character.exp>=0
      @character.level=1
    end
    if @character.exp>=300
      @character.level=2
    end
    if @character.exp>=500
      @character.level=3
    end
    if @character.exp>=1000
      @character.level=4
    end
    if @character.exp>=2000
      @character.level=5
    end
    if @character.exp>=5000
      @character.level=6
    end
    if @character.exp>=10000
      @character.level=7
    end
    if @character.exp>=20000
      @character.level=8
    end
    if @character.exp>=50000
      @character.level=9
    end
    if @character.exp>=100000
      @character.level=10
    end
    if @character.archetype_id==1
      @character.hp=6*@character.level
    end
    if @character.archetype_id==2
      @character.hp=7*@character.level
    end
    if @character.archetype_id==3
      @character.hp=8*@character.level
    end
    if (@character.strength + @character.vitality + @character.intelligence + @character.dexterity + @character.agility + @character.wisdom + @character.charisma) == @character.level
      respond_to do |format|
        if @character.save
          format.html { redirect_to @character, notice: 'Character was successfully created.' }
          format.json { render :show, status: :created, location: @character }
        else
          format.html { render :new }
          format.json { render json: @character.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:danger] = "Character stats must match level."
      render :new
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    if @character.exp>=0
      @character.level=1
    end
    if @character.exp>=300
      @character.level=2
    end
    if @character.exp>=500
      @character.level=3
    end
    if @character.exp>=1000
      @character.level=4
    end
    if @character.exp>=2000
      @character.level=5
    end
    if @character.exp>=5000
      @character.level=6
    end
    if @character.exp>=10000
      @character.level=7
    end
    if @character.exp>=20000
      @character.level=8
    end
    if @character.exp>=50000
      @character.level=9
    end
    if @character.exp>=100000
      @character.level=10
    end
    if @character.archetype_id==1
      @character.hp=6*@character.level
    end
    if @character.archetype_id==2
      @character.hp=7*@character.level
    end
    if @character.archetype_id==3
      @character.hp=8*@character.level
    end
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :user_id, :level, :exp, :archetype_id, :race_id, :role, :strength, 
        :vitality, :intelligence, :dexterity, :agility, :wisdom, :charisma, :hp, :cp, :sp, :gp, :pp, :locX, :locY)
    end
end
