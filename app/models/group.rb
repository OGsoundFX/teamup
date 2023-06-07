class Group < ApplicationRecord

  belongs_to :user
  has_many :posts
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :events
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  attr_accessor :private
end
