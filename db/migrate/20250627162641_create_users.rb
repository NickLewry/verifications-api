class CreateUsers < ActiveRecord::Migration[7.1]
  
  set_lock_timeout(5000)
  set_statement_timeout(1500)

  
  def up
    create_table :users do |t|
      t.column :given_name, :string
      t.column :family_name, :string
      t.column :age, :integer
      t.timestamps
end

  end
  def down
    drop_table :users

  end
end
