class Session < ApplicationRecord
  belongs_to :world
  has_many :sessioncharacters, dependent: :destroy
end
