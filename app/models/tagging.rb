class Tagging < ApplicationRecord
  belongs_to :pokemon
  belongs_to :tag

  validates :tag, uniqueness: { scope: :pokemon }
end

# Tagging pokemon_id: 5 tag_id: 1
# Tagging pokemon_id: 4 tag_id: 2
# Tagging pokemon_id: 4 tag_id: 5
# Tagging pokemon_id: 5 tag_id: 1

# Doctor first_name: John last_name: Doe
# Doctor first_name: John last_name: Hills
# Doctor first_name: John last_name: Doe
