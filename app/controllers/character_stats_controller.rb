class CharacterStatsController < ApplicationController
  before_action :set_character_stat, only: [:show, :update, :destroy]

  # GET /character_stats
  def index
    @character_stats = CharacterStat.all

    render json: @character_stats
  end

  # GET /character_stats/1
  def show
    render json: @character_stat
  end

  # POST /character_stats
  def create
    @character_stat = CharacterStat.new(character_stat_params)

    if @character_stat.save
      render json: @character_stat, status: :created, location: @character_stat
    else
      render json: @character_stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_stats/1
  def update
    if @character_stat.update(character_stat_params)
      render json: @character_stat
    else
      render json: @character_stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_stats/1
  def destroy
    @character_stat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_stat
      @character_stat = CharacterStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_stat_params
      params.require(:character_stat).permit(:character_id, :character_stats_dn_d5es_id)
    end
end
