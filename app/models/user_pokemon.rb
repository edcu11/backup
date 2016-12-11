class UserPokemon < ActiveRecord::Base
  belongs_to :poke
  belongs_to :user
end
