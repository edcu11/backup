class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :user_pokemons
  has_many :pokes, through: :user_pokemons

  has_many :reviews
end
