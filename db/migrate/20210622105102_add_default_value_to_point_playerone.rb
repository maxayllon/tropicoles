class AddDefaultValueToPointPlayerone < ActiveRecord::Migration[6.1]
  def change
    change_column :playerones, :point, :integer, default: 0
  end
end
