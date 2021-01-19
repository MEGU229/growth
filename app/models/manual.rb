class Manual < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy


  validates :title, presence: true
  validates :text, presence: true
  has_one_attached :image
end
