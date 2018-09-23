class World < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy
  has_many :worldcharacters, dependent: :destroy
end
