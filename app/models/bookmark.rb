class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, minimum: 6, allow_blank: true
  validates :movie, uniqueness: { scope: :list }
end
