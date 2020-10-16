class Artist < ApplicationRecord
    has_many :concerts
    has_many :fans, through: :concerts
end
