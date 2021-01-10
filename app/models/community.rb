class Community < ApplicationRecord
  belongs_to :account
  validates_presence_of :url, :name, :rules, :summary
  has_many :posts
  has_many :subscriptions
  has_many :subscribers, through: :subscription, source: :account
end
