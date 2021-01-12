class Vote < ApplicationRecord
  belongs_to :post
  belongs_to :account

  validates_presence_of :account_id, scope: :post_id

  after_create :increment_vote
  after_destroy :decrement_vote

  private

  def increment_vote
    field = upvote ? :upvotes : :downvotes
    Post.find(post_id).increment(field).save
  end

  def decrement_vote
    field = upvote ? :upvotes : :downvotes
    Post.find(post_id).decrement(field).save
  end
end
