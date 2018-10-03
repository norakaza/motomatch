class User < ApplicationRecord
  has_many :motos

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
