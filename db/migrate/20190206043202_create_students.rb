class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.integer :age
      t.date :birthday
      t.string :education

      t.timestamps
    end
    add_index :students, :email, unique: true
    add_index :students, :username, unique: true
  end
end
