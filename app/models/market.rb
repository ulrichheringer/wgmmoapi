# typed: strict

class Market < ApplicationRecord
  has_many :items
end
