class EateriesController < ApplicationController
  def index
    @eateries = Eatery.all
  end

  def show
  end

  def new
    @eatery = Eatery.new
  end

  def edit
  end

  def create
    eatery = Eatery.new(eatery_params)
    eatery.save!
    redirect_to eateries_url, notice: "お食事どころ「#{eatery.name}」を追加しました。"
  end

  def eatery_params
    params.require(:eatery).permit(:name,:address,:tel,:regular_holiday,:open,:close)
  end
end
