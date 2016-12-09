class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :employee_id
      t.string :city
      t.string :state
      t.string :zip
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
