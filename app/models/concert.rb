class Concert < ApplicationRecord
    belongs_to :artist
    belongs_to :fan
end
