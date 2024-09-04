# typed: strict

class Bank < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :bodyguards
end
