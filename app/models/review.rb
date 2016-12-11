class Review < ActiveRecord::Base
  belongs_to :poke

    validates :descripcion, presence: true
    validates :rev, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

    belongs_to :user
end
