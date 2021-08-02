class CreateCruises < ActiveRecord::Migration[6.0]
  def change
    create_table :cruises do |t|
      t.string :name
      t.text :description
      t.time :duration_of_cruise
      t.integer :capacity
      t.string :extra_offers
      t.text :cancellation_policy
      t.string :location
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
