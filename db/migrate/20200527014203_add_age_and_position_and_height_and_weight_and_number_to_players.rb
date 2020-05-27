class AddAgeAndPositionAndHeightAndWeightAndNumberToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :age, :integer
    add_column :players, :position, :string
    add_column :players, :height, :float
    add_column :players, :weight, :float
    add_column :players, :number, :integer
  end
end
