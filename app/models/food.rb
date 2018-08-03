# frozen_string_literal: true

class Food < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3, maximum: 200 }
  validates :price, presence: true, length: { minimum: 1, maximum: 10 }
  validates :category, presence: true, length: { minimum: 3, maximum: 50 }
end
