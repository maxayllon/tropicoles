class CreatePlayertwos < ActiveRecord::Migration[6.1]
  def change
    create_table :playertwos do |t|
      t.string :name
      t.integer :point
      t.references :teamtwo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
