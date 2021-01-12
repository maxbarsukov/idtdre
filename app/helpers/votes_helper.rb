module VotesHelper
  def is_upvoted post
    if account_signed_in?
      current_account.upvoted_posts_ids.include? post.id
    end
  end

  def is_downvoted post
    if account_signed_in?
      current_account.downvoted_posts_ids.include? post.id
    end
  end
end
