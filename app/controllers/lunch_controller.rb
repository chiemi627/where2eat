class LunchController < ApplicationController
  def go
    eateries = Eatery.all
    @recommend = eateries.sample
  end
end
