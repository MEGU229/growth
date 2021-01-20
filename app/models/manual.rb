class Manual < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  with_options presence: true do
  validates :title, length: { maximum: 50 }
  validates :text, length: { maximum: 1000 }
  end
  
  has_one_attached :image
end
