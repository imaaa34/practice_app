class AddBodyToTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :titles, :body, :string
    
  end
end
