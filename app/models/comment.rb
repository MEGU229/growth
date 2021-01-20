class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :manual

  validates :text, presence: true, length: { maximum: 1000 }
end
