class Poke < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :attack, numericality: {greater_than: 0}
  validates :defense, numericality: {greater_than: 0}

  has_many :reviews
  has_many :catpoks
  has_many :user_pokemons
  has_many :categories, through: :catpoks
  has_many :users, through: :user_pokemons

  before_create :default_image
  before_update :default_image

  protected

  def default_image
    if avatar_url == ""
      self.avatar_url='https://s-media-cache-ak0.pinimg.com/564x/95/d5/cd/95d5cded00f3a3e8a98fb1eed568aa9f.jpg'
    end
  end
end
