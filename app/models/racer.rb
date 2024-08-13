class Racer < ApplicationRecord
  belongs_to :sailor
  belongs_to :race

  validates_uniqueness_of :sailor, scope: :race_id, message: 'already registered for that race'
end
