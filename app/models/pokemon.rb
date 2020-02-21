class Pokemon < ApplicationRecord
  belongs_to :box

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates :name, presence: true
end

# Pokemon id: 5  name: "Flareon"
