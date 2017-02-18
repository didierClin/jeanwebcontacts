class FixColumnNameProspects < ActiveRecord::Migration[5.0]
  def change
    rename_column :prospects, :type, :prosp_type
  end
end
