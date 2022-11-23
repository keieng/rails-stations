class Movie < ApplicationRecord
  has_many :schedules
  validates :name, uniqueness: { message: "映画名が既に登録済みです。" }
  validates :name, presence: { message: "映画名を入力してください。" }

  scope :word_search, ->(keyword) { where("name LIKE ?", "%#{keyword}%").or(where("description LIKE ?", "%#{keyword}%")) }
  scope :showing_search, ->(is_showing) { where(is_showing: is_showing) }
  scope :search, ->(name, is_showing) { name_search(name).showing_search(is_showing) }
end
