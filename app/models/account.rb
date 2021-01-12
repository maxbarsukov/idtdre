class Account < ApplicationRecord
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :subscriptions
  has_many :communities, through: :subscriptions
  has_many :posts
  has_many :comments
  has_many :votes

  validates_presence_of :username

  def full_name
    "#{first_name} #{last_name}"
  end

  def upvoted_posts_ids
    votes.where(upvote: true).pluck(:post_id)
  end

  def downvoted_posts_ids
    votes.where(upvote: false).pluck(:post_id)
  end
end
