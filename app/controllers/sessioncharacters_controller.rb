class SessioncharactersController < ApplicationController
  
  # GET /sessioncharacters/1
  # GET /sessioncharacters/1.json
  def show
  	@sessioncharacter = Sessioncharacter.find(params[:id])
  	@sessioncharacter_characters = Sessioncharacter.where('sessioncharacter_id = ?',"#{@sessioncharacter.id}")
  end

  # GET /sessioncharacters/new
  def new
  	@session = Session.find(params[:session_id])
    @sessioncharacter = Sessioncharacter.new
  end

  def create
    @sessioncharacter = Sessioncharacter.new(sessioncharacter_params)
  	@session = Session.find(params[:session_id])

    respond_to do |format|
      if @sessioncharacter.save
        format.html { redirect_to @session, notice: 'Sessioncharacter was successfully created.' }
        format.json { render :show, status: :created, location: @sessioncharacter }
      else
        format.html { render :new }
        format.json { render json: @sessioncharacter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessioncharacters/1
  # PATCH/PUT /sessioncharacters/1.json
  def update
    respond_to do |format|
      if @sessioncharacter.update(sessioncharacter_params)
        format.html { redirect_to @session, notice: 'Sessioncharacter was successfully updated.' }
        format.json { render :show, status: :ok, location: @sessioncharacter }
      else
        format.html { render :edit }
        format.json { render json: @sessioncharacter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessioncharacters/1
  # DELETE /sessioncharacters/1.json
  def destroy
    @sessioncharacter.destroy
    respond_to do |format|
      format.html { redirect_to sessioncharacters_url, notice: 'Sessioncharacter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_sessioncharacter
      @sessioncharacter = Sessioncharacter.find(params[:id])
    end
  def sessioncharacter_params
      params.require(:sessioncharacter).permit(:session_id, :character_id)
    end
end
