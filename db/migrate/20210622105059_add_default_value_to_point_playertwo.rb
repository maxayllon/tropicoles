class AddDefaultValueToPointPlayertwo < ActiveRecord::Migration[6.1]
  def change
    change_column :playertwos, :point, :integer, default: 0
  end
end
