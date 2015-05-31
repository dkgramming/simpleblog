class CommentsController < ApplicationController

  def new
    @post = Post.find_by(id: params[:post_id])
    @comment = Comment.new
  end
  
  def create
    post = Post.find_by(id: params[:post_id])
    comment = params[:comment]
    post.comments.create(comment: comment[:comment])
    redirect_to '/posts/'
  end

end
