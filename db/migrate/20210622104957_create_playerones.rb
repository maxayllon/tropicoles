class CreatePlayerones < ActiveRecord::Migration[6.1]
  def change
    create_table :playerones do |t|
      t.string :name
      t.integer :point
      t.references :teamone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
