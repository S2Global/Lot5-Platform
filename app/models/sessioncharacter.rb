class Sessioncharacter < ApplicationRecord
  belongs_to :character
  belongs_to :session
end
