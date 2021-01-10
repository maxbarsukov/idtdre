class Account < ApplicationRecord
  has_many :posts
  has_many :communities

  validates_presence_of :username

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
