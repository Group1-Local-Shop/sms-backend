class CreateClerks < ActiveRecord::Migration[7.0]
  def change
    create_table :clerks do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :role

      t.timestamps
    end
  end
end
