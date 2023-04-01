class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :first_name
      t.string :last_name
      t.date :date
      t.integer :guests
      t.string :email_address
      t.integer :phone_number
      t.text :message

      t.timestamps
    end
  end
end
