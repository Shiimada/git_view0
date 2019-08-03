class MemosController < ApplicationController
  def create
     @comment = Memo.create(text: memo_params[:text], mitame_id: memo_params[:mitame_id])
    redirect_to "/mitames/#{@memo.mitame.id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end
  
  private
  def memo_params
    params.permit(:text, :mitame_id)
  end
end
