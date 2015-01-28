class ChangePlotToText < ActiveRecord::Migration
  def change
    change_column :movies, :plot, :text
  end
end
