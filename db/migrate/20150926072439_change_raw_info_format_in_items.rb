class ChangeRawInfoFormatInItems < ActiveRecord::Migration
  def change
    change_column :items, :raw_info, :text
  end
end
