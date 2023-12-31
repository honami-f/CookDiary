class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :comments
  has_many :likes

  validates :name, presence: true
  validates :password, format: { with: /\A[a-zA-Z0-9]{6,}\z/ }
end
