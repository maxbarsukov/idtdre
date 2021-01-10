class Post < ApplicationRecord
  belongs_to :account, :community
  validates_presence_of :title, :body, :account_id, :community_id
end
