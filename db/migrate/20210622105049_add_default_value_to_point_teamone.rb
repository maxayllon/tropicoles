class AddDefaultValueToPointTeamone < ActiveRecord::Migration[6.1]
  def change
    change_column :teamones, :point, :integer, default: 0
  end
end
