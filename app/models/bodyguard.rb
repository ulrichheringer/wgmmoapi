# typed: strict

class Bodyguard < ApplicationRecord
  belongs_to :characters
  belongs_to :bank
end
