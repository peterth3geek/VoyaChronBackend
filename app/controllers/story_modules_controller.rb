class StoryModulesController < ApplicationController
  before_action :set_story_module, only: [:show, :update, :destroy]

  # GET /story_modules
  def index
    @story_modules = StoryModule.all

    render json: all_formatted(@story_modules)
  end

  # GET /story_modules/1
  def show
    render json: @story_module.formatted
  end

  # POST /story_modules
  def create
    @story_module = StoryModule.new(story_module_params)

    if @story_module.save
      render json: @story_module, status: :created, location: @story_module
    else
      render json: @story_module.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /story_modules/1
  def update
    if @story_module.update(story_module_params)
      render json: @story_module
    else
      render json: @story_module.errors, status: :unprocessable_entity
    end
  end

  # DELETE /story_modules/1
  def destroy
    @story_module.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_module
      @story_module = StoryModule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_module_params
      params.require(:story_module).permit(:title, :description, :chapter_id, :location_id)
    end
end
