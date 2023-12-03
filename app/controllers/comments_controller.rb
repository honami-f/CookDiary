class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @recipe = Recipe.find(params[:recipe_id])
    return unless @comment.save

    CommentChannel.broadcast_to @recipe, { comment: @comment, user: @comment.user }
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
