# frozen_string_literal: true

class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'This movies is alredy on this list' }
end
