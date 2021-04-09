class AddImageIdToTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :titles, :image_id, :string
  end
end
