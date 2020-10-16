class Fan < ApplicationRecord
    has_many :concerts
    has_many :artists, through: :concerts
end
