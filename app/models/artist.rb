class Artist < ApplicationRecord
    has_many :purchases
    has_many :instruments, through: :purchases
    validates :name, presence: true
    validates :title, uniqueness: true
end
