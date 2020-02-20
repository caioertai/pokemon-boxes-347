class Pokemon < ApplicationRecord
  belongs_to :box

  validates :name, presence: true
end
