class CharacterItemsController < ApplicationController
  before_action :set_character_item, only: [:show, :update, :destroy]

  # GET /character_items
  def index
    @character_items = CharacterItem.all

    render json: @character_items
  end

  # GET /character_items/1
  def show
    render json: @character_item
  end

  # POST /character_items
  def create
    @character_item = CharacterItem.new(character_item_params)

    if @character_item.save
      render json: @character_item, status: :created, location: @character_item
    else
      render json: @character_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_items/1
  def update
    if @character_item.update(character_item_params)
      render json: @character_item
    else
      render json: @character_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_items/1
  def destroy
    @character_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_item
      @character_item = CharacterItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_item_params
      params.require(:character_item).permit(:character_id, :item_id)
    end
end
