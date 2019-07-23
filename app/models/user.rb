class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :diaries, class_name: 'Diarie'
        has_many :favorites, class_name: 'Favorite'
        
end
