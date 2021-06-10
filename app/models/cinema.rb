class Cinema < ApplicationRecord
    has_many :shows, dependent: :destroy
end
