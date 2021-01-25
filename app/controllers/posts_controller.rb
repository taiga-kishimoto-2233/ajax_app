class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all.order(id: "DESC") #すべてのレコードを@postに代入、メモを降順で表示
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

end
