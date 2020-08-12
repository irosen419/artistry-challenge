class Instrument < ApplicationRecord
    has_many :purchases
    has_many :artists, through: :purchases
end
