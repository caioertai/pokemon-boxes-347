class Tag < ApplicationRecord
  has_many :taggings
  has_many :pokemons, through: :taggings

  validates :name, uniqueness: true, presence: true
end

# Tag id: 1 name: "Fire"
