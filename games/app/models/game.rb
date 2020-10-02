class Game < ApplicationRecord
  has_many :rules
  has_many :components
  has_one_attached :avatar
  accepts_nested_attributes_for :components, allow_destroy: true
  accepts_nested_attributes_for :rules, allow_destroy: true
end
