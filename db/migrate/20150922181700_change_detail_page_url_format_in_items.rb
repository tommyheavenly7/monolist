class ChangeDetailPageUrlFormatInItems < ActiveRecord::Migration
  def change
    change_column :items, :detail_page_url, :text
  end
end
