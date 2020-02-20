class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.references :box, foreign_key: true

      t.timestamps
    end
  end
end
