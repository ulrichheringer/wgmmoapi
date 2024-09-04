# typed: strict

class User < ApplicationRecord
    has_many :characters
    has_many :collectables
    has_and_belongs_to_many :guilds
    has_and_belongs_to_many :banks
    has_many :chests
    has_many :pets
end
