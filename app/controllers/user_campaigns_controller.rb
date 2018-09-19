class UserCampaignsController < ApplicationController
  before_action :set_user_campaign, only: [:show, :update, :destroy]

  # GET /user_campaigns
  def index
    @user_campaigns = UserCampaign.all

    render json: @user_campaigns
  end

  # GET /user_campaigns/1
  def show
    render json: @user_campaign
  end

  # POST /user_campaigns
  def create
    @user_campaign = UserCampaign.new(user_campaign_params)

    if @user_campaign.save
      render json: @user_campaign, status: :created, location: @user_campaign
    else
      render json: @user_campaign.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_campaigns/1
  def update
    if @user_campaign.update(user_campaign_params)
      render json: @user_campaign
    else
      render json: @user_campaign.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_campaigns/1
  def destroy
    @user_campaign.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_campaign
      @user_campaign = UserCampaign.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_campaign_params
      params.require(:user_campaign).permit(:user_id, :campaign_id, :relationship)
    end
end
