class Movie < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
