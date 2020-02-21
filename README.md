# Pokemon Boxes

## Running the app

As usual. Bundle and yarn install, db create/migrate/seed, and then run the server.

```shell
bundle install
yarn install
rails db:create db:migrate db:seed
rails s
```



## User stories
- [x] As a user I can see one box's pokémons

- [x] As a user I can add a pokémon to a box `/boxes/:box_id/pokemons/new`

- [x] As a user I can remove a pokémon from a box

- [x] As a user, I can see pokémon tags in their info

- [x] As a user, I can tag pokémons with their types, abilities, etc...



## Adding webpacker to an existing app

https://github.com/rails/webpacker#installation

## Tag suggestions

- Normal
- Fire
- Water
- Electric
- Grass
- Ice
- Fighting
- Poison
- Ground
- Flying
- Psychic
- Bug
- Rock
- Ghost
- Dragon
- Dark
- Steel
- Fairy

## Frontend setup

Follow our [front-end setup guidelines](https://github.com/lewagon/rails-stylesheets/blob/master/README.md) but don’t bother with the Bootstrap JS part, we won’t use any JS here.

## For Pokémon images
Let's use pokemondb.net
```
https://img.pokemondb.net/artwork/POKEMON_NAME.jpg
```

## For box seeds
```ruby
# db/seeds.rb
Box.destroy_all if Rails.env.development?

Box.create!(
  name: "My first box",
  banner_url: "https://i.imgur.com/qyrmoon.png?1"
)

Box.create!(
  name: "My favorite box",
  banner_url: "https://i.imgur.com/k2214jg.png?1"
)
```

## Layout suggestions
Yeah... scaffold isn't the prettiest... Let's use a bit of the [Le Wagon UI Kit](https://uikit.lewagon.com/).

- For the `boxes#show` let's use the **banners**.
- For the pokémons inn the boxes let's use the **category cards**.
