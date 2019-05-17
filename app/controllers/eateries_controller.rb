class EateriesController < ApplicationController
  def new
  end

  def create
   eatery = Eatery.new(eatery_params)
   eatery.save
   flash[:success] = "#{eatery.name}を追加しました"
   redirect_to root_path
 end

 private

 def eatery_params
   params.require(:eatery).permit(:name)
 end

end
