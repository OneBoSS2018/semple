class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :posts
validates :email, presence: true
validates_associated :posts
validates :password, length: { in: 6..20 }
validates :email, uniqueness: true
end
