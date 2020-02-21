# db/seeds.rb
Box.destroy_all if Rails.env.development?
Pokemon.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

first_box = Box.create!(
  name: "My first box",
  banner_url: "https://i.imgur.com/qyrmoon.png?1"
)

favorite_box = Box.create!(
  name: "My favorite box",
  banner_url: "https://i.imgur.com/k2214jg.png?1"
)

Pokemon.create!(name: "Pikachu", box: first_box)
Pokemon.create!(name: "Psyduck", box: first_box)
Pokemon.create!(name: "Jolteon", box: first_box)
Pokemon.create!(name: "Dugtrio", box: favorite_box)
Pokemon.create!(name: "Ditto",   box: favorite_box)
Pokemon.create!(name: "Mewtwo",  box: favorite_box)

Tag.create!(name: "Normal")
Tag.create!(name: "Fire")
Tag.create!(name: "Water")
Tag.create!(name: "Electric")
Tag.create!(name: "Grass")
Tag.create!(name: "Ice")
Tag.create!(name: "Fighting")
Tag.create!(name: "Poison")
Tag.create!(name: "Ground")
Tag.create!(name: "Flying")
Tag.create!(name: "Psychic")
Tag.create!(name: "Bug")
Tag.create!(name: "Rock")
Tag.create!(name: "Ghost")
Tag.create!(name: "Dragon")
Tag.create!(name: "Dark")
Tag.create!(name: "Steel")
Tag.create!(name: "Fairy")
