class Category < ActiveRecord::Base
  validates_presence_of :nombre

  has_many :catpoks
  has_many :pokes, through: :catpoks
end
