class Catpok < ActiveRecord::Base
  belongs_to :poke
  belongs_to :category
end
