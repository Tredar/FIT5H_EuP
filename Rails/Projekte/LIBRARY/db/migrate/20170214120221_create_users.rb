class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :email
      t.boolean :admin
      t.boolean :active

      t.timestamps
    end
  end
end
