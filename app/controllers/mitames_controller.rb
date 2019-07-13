class MitamesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @mitames = Mitame.all
  end
  
  def show
    @mitames = Mitame.find(params[:id])
  end
  
  def new
  end
  
  def create
    Mitame.create(mitame_params)
  end
  
  private
  def mitame_params
    params.permit(:name, :image, :text)
  end

end
