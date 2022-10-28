class CreateRegistrationLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_links do |t|
      t.string :registration_link
      t.date :expiry_date


      t.timestamps
    end
  end
end
