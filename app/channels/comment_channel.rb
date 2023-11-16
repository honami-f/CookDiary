class CommentChannel < ApplicationCable::Channel
  def subscribed
    @recipe = Recipe.find(params[:recipe_id])
    stream_for @recipe
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
