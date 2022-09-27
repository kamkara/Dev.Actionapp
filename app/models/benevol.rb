class Benevol < ApplicationRecord
    validates :full_name, :user_id, presence: true


    has_one_attached :img
    STATUS= ["La Lune", "Actif", "Benevol"]
end
