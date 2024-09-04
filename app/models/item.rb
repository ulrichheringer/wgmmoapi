# typed: strict

class Item < ApplicationRecord
  belongs_to :characters
  belongs_to :item_catalogs
  belongs_to :markets
end
