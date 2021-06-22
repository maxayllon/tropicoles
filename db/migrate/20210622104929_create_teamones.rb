class CreateTeamones < ActiveRecord::Migration[6.1]
  def change
    create_table :teamones do |t|
      t.string :name
      t.integer :point
      t.references :ppt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
