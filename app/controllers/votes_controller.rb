class VotesController < ApplicationController
  def create
    post_id = params[:post_id]

    vote = Vote.new
    vote.post_id = params[:post_id]
    vote.upvote = params[:upvote]
    vote.account_id = current_account.id

    # Check if vote by this user exists
    existing_vote = Vote.where(account_id: current_account.id, post_id: post_id)
    @new_vote = existing_vote.size < 1

    respond_to do |format|
      format.js {
        if existing_vote.size.positive?
          # Destroy existing vote
          existing_vote.first.destroy
        else
          # Save new vote
          @success = vote.save
        end

        @post = Post.find(post_id)
        @is_upvoted = params[:upvote]
        render "votes/create"
      }
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:upvote, :post_id)
  end
end
