class CommentsController < ApplicationController

  def new
    @post = Post.find_by(id: params[:post_id])
    @comment = Comment.new
  end
  
  def create
    post = Post.find_by(id: params[:post_id])
    post.comments.create(comment: params[:comment])
    redirect_to '/posts/'
  end

end
