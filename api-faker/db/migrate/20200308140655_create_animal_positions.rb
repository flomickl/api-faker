class CreateAnimalPositions < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_positions do |t|
      t.float :katze_lat
      t.float :katze_long
      t.float :hund_lat
      t.float :hund_long
      t.bigint :runner

      t.timestamps
    end
  end
end
