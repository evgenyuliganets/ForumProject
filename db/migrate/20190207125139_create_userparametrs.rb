class CreateUserparametrs < ActiveRecord::Migration[5.1]
  def change
    create_table :userparametrs do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :user_id
      t.attachment :avatar

      t.timestamps
    end
  end
end
