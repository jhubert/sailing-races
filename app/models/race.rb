class Race < ApplicationRecord
  has_many :racers
  has_many :sailors, through: :racers
end
