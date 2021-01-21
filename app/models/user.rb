class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
         validates :name, format: { with: /\A[ぁ-んァ-ヶ一-龥々]+\z/}
         validates :position_id
         end

         with_options numericality: { other_than: 1 } do
          validates :position_id
         end

         has_many :manuals
         belongs_to :position
         has_many :comments
         has_many :favorites
         has_many :fav_manuals, through: :favorites, source: :manual
       
end
