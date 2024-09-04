# typed: strict

class Pet < ApplicationRecord
  belongs_to :user
end
