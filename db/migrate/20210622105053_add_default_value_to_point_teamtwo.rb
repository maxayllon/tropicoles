class AddDefaultValueToPointTeamtwo < ActiveRecord::Migration[6.1]
  def change
    change_column :teamtwos, :point, :integer, default: 0
  end
end
