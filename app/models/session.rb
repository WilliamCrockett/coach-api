# frozen_string_literal: true

class Session < ApplicationRecord
  belongs_to :user
  validates_inclusion_of :program, in: ['470w', '470m', '49er', '49erfx', 'laser', 'laserradial', 'finn', 'nacra']
  validates_inclusion_of :session_rating, in: [1, 2, 3, 4, 5]
end
