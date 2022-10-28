class AddPlanetToAlien < ActiveRecord::Migration[7.0]
  def change
    add_reference :aliens, :planet, null: false, foreign_key: true
  end
end
