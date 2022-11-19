class Movie < ApplicationRecord
  validates :name, uniqueness: { message: "映画名が既に登録済みです。" }
  validates :name, presence: { message: "映画名を入力してください。" }
end
