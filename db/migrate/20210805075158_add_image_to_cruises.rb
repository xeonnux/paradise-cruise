class AddImageToCruises < ActiveRecord::Migration[6.0]
  def change
    add_column :cruises, :image_url, :string
  end
end
