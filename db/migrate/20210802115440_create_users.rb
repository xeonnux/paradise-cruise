class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :address
      t.text :email
      t.string :phone_number
      t.string :password
      t.boolean :is_owner

      t.timestamps
    end
  end
end
