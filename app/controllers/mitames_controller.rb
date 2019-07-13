class MitamesController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]
  before_action :set_mitame, only: [ :show, :edit, :update, :destroy]
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
  def mitame_params
    params.permit(:name, :image, :text)
  end
  
 def set_mitame
  @mitame = Mitame.find(params[:id])
 end

end
