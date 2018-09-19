class CharacterStatsDnD5esController < ApplicationController
  before_action :set_character_stats_dn_d5e, only: [:show, :update, :destroy]

  # GET /character_stats_dn_d5es
  def index
    @character_stats_dn_d5es = CharacterStatsDnD5e.all

    render json: @character_stats_dn_d5es
  end

  # GET /character_stats_dn_d5es/1
  def show
    render json: @character_stats_dn_d5e
  end

  # POST /character_stats_dn_d5es
  def create
    @character_stats_dn_d5e = CharacterStatsDnD5e.new(character_stats_dn_d5e_params)

    if @character_stats_dn_d5e.save
      render json: @character_stats_dn_d5e, status: :created, location: @character_stats_dn_d5e
    else
      render json: @character_stats_dn_d5e.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_stats_dn_d5es/1
  def update
    if @character_stats_dn_d5e.update(character_stats_dn_d5e_params)
      render json: @character_stats_dn_d5e
    else
      render json: @character_stats_dn_d5e.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_stats_dn_d5es/1
  def destroy
    @character_stats_dn_d5e.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_stats_dn_d5e
      @character_stats_dn_d5e = CharacterStatsDnD5e.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_stats_dn_d5e_params
      params.require(:character_stats_dn_d5e).permit(:stregnth, :dexterity, :constitution, :wisdom, :intelligence, :charisma)
    end
end
