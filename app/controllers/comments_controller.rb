class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.account_id = current_account.id


    respond_to do |format|
      format.js {
        if @comment.save
          redirect_to "comments/create"
        else
          # unable to save
        end
      }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :post_id)
  end
end
