class Favorite < ApplicationRecord
  belongs_to :diarie
  belongs_to :user
end
