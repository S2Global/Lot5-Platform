class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  # GET /items/new
  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @character = Character.find(params[:character_id])
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  # POST /items
  # POST /items.json
  def create
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @item = Item.new(item_params)
    @character  = Character.find(params[:character_id])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @character, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @character  = Character.find(params[:character_id])
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @character, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @character  = Character.find(params[:character_id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to @character, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :character_id, :description, :uses, :durability)
    end
end
