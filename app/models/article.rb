class Article < ApplicationRecord
  has_many :comments
  validates :title, :author, :text, presence: true, length: { minimum: 5 }
  validates :title, uniqueness: true
end
