class Character < ApplicationRecord
  belongs_to :user
  belongs_to :archetype
  belongs_to :race
  belongs_to :world
  has_many :abilities, dependent: :destroy
  has_many :items, dependent: :destroy
end
