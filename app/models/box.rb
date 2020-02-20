class Box < ApplicationRecord
  has_many :pokemons, dependent: :destroy

  validates :name, :banner_url, presence: true, uniqueness: true
end
