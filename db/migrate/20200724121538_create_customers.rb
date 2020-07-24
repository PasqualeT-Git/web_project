class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :e_mail
      t.string :phone_number
      t.text :message

      t.timestamps
    end
  end
end
