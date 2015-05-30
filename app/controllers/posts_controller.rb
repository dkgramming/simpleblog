class PostsController < ApplicationController

  def index
    @posts = Post.all.reverse
  end
  
  def show
    @post = Post.find_by(id: params[:id]) 
  end

  def new
    @post = Post.new
  end

  def create
    post = params[:post] 
    title = post[:title]
    text = post[:text]
    @post = Post.create(title: title, text: text)
    redirect_to '/posts/'
  end

end
