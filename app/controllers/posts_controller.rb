class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #コメントアウトする
  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    render ison:{post: post}
  end
end
