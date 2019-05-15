class EateriesController < ApplicationController
  before_action :login_required

  def index
    @eateries = Eatery.all
  end

  def show
  end

  def new
    @eatery = Eatery.new
  end

  def edit
    @eatery = Eatery.find(params[:id])
  end

  def update
    eatery = Eatery.find(params[:id])
    eatery.update(eatery_params)
    flash[:success] = "#{Eatery.model_name.human}「#{eatery.name}」を追加しました。"
    redirect_to eateries_url

  end

  def create
    eatery = Eatery.new(eatery_params)
    eatery.save!
    flash[:success] = "#{Eatery.model_name.human}「#{eatery.name}」を追加しました。"
    redirect_to eateries_url
  end

  private

  def eatery_params
    params.require(:eatery).permit(:name,:address,:tel,:regular_holiday,:open,:close)
  end

  def login_required
    redirect_to login_path unless current_user
end
end
