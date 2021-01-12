class Post < ApplicationRecord
  belongs_to :account
  belongs_to :community
  has_many :comments

  validates_presence_of :title, :body, :account_id, :community_id

  def score
    # difference between upvotes and downvotes
    0
  end
end
