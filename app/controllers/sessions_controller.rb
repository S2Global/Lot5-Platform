class SessionsController < ApplicationController
  
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @sessions = Session.all
  end
  # GET /sessions/1
  # GET /sessions/1.json
  def show
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  	@session = Session.find(params[:id])
  	@session_characters = Sessioncharacter.where('session_id = ?',"#{@session.id}")
  end

  # GET /sessions/new
  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @world = World.find(params[:world_id])
    @session = Session.new
  end

  def create
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @session = Session.new(session_params)
    @world = World.find(params[:world_id])

    respond_to do |format|
      if @session.save
        format.html { redirect_to '/worlds/' + @world.id.to_s + '/sessions/' + @session.id.to_s, notice: 'Session was successfully created.' }
        format.json { render :show, status: :created, location: @session }
      else
        format.html { render :new }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @session.destroy
    respond_to do |format|
      format.html { redirect_to sessions_url, notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end
  def session_params
      params.require(:session).permit(:world_id, :ongoing, :notes)
    end
end
