class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")  # 1番目のレコードを@postに代入
  end

  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end

