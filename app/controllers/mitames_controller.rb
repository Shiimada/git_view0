class MitamesController < ApplicationController
# before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

before_action :set_mitame, only: [ :show, :edit, :update, :destroy]
 def show
    @mitame = Mitame.find(params[:id])
 end
  def index
    @mitames = Mitame.order("created_at DESC").page(params[:page]).per(9)
  end
  def new
   @mitame = Mitame.new
  end
  
  def create
     @mitame = Mitame.new(mitame_params)
  end
  
  def destroy
   mitame = Mitame.find(params[:id])
   mitame.destroy
   redirect_to action: 'index'
  end
 
 
 def edit
   @mitame = Mitame.find(params[:id])
 end
 
 def update
  respond_to do |format|
   if @mitame.update(mitame_params)
    format.html {redirect_to @mitame, notice: 'Completed!!!!' }
    format.json {render :show, status: :ok, location: @mitame }
   else
    format.html {render :edit }
    format.json {render json: @book.errors, status: :unprocessable_entity }
   end
  end
 end
  
  private
  def mitame_params
    params.require(:mitame).permit(:name, :image, :text)
  end
  
 def set_mitame
  @mitame = Mitame.find(params[:id])
 end

end
