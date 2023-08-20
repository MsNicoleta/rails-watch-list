# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :bookmarks

  # Validation: Ensure a unique title for each movie
  validates :title, presence: true, uniqueness: true

  # Validation: Ensure an overview is present for each movie
  validates :overview, presence: true
end
