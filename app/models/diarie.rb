class Diarie < ApplicationRecord
    // 
    belongs_to :user
    has_many :favorites
  has_many :users, through: :favorites
  has_one_attached :image


  validates :title, presence: true 

end
