class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :doses, :descrition, :description
  end
end
