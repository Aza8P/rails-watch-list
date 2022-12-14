class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }, allow_blank: false
  validates :movie, uniqueness: { scope: :list }
  validates :movie, presence: true
  validates :list, presence: true
end
