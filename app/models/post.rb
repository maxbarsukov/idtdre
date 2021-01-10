class Post < ApplicationRecord
  validates_presence_of :title, :body, :account_id, :community_id
end
