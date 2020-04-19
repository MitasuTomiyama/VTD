class CommentsController < ApplicationController

  def index
    @art = Art.find(params[:id])
    @comments = @art.comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to art_path(@commnet.art_id)
    else
      redirect_to art_path(@comment.art_id)
  end

  def update
    @comment = Comment.find(:id)
    if @comment.update(comment_params)
      redirect_back(fallback_location: root_path[:@comment.art_id])
    else
      redirect_back(fallback_location: root_path[:@comment.art_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_back(fallback_location: root_path[:@comment.art_id])
    else
      redirect_back(fallback_location: root_path[:@comment.art_id])
  end

  private
  def comment_params
    params.require(:comment),parmit(:user_id, :art_id, :comment_id, :comment)
end
