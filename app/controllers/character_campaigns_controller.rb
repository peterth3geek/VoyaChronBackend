class CharacterCampaignsController < ApplicationController
  before_action :set_character_campaign, only: [:show, :update, :destroy]

  # GET /character_campaigns
  def index
    @character_campaigns = CharacterCampaign.all

    render json: @character_campaigns
  end

  # GET /character_campaigns/1
  def show
    render json: @character_campaign
  end

  # POST /character_campaigns
  def create
    @character_campaign = CharacterCampaign.new(character_campaign_params)

    if @character_campaign.save
      render json: @character_campaign, status: :created, location: @character_campaign
    else
      render json: @character_campaign.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_campaigns/1
  def update
    if @character_campaign.update(character_campaign_params)
      render json: @character_campaign
    else
      render json: @character_campaign.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_campaigns/1
  def destroy
    @character_campaign.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_campaign
      @character_campaign = CharacterCampaign.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_campaign_params
      params.require(:character_campaign).permit(:character_id)
    end
end
