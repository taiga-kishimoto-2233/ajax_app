class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all.order(id: "DESC") #すべてのレコードを@postに代入、メモを降順で表示
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(cheked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
end
