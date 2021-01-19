class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true
         validates :position_id, presence: true

         with_options numericality: { other_than: 1 } do
          validates :position_id
         end

         has_many :manuals
         belongs_to :position
         has_many :comments
end
