class CommentsController < ApplicationController
  # before_action :only => [:new, :edit] do
  #   redirect_to new_user_session_path unless current_user && current_user.admin
  # end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    if @comment.save
    flash[:notice] = "Comment successfully added!"
      redirect_to  post_path(@post)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment= Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment successfully updated!"
      redirect_to comments_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      flash[:notice] = "Comment successfully removed!"
      redirect_to comments_path
    end
  end

private
  def comment_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
