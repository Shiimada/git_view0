class MitamesController < ApplicationController
  def index
    @mitames = Mitame.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    Mitame.create(mitame_params)
  end
  
  private
  def miatme_params
    params.permit(:name, :image, :text)
  end

end
