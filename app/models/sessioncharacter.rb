class Sessioncharacter < ApplicationRecord
  belongs_to :character
  belongs_to :session
  validates :character_id, :presence => true, uniqueness: { scope: :session_id }
end
