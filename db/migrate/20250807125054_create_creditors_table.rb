class CreateCreditorsTable < ActiveRecord::Migration[7.1]
  
  set_lock_timeout(5000)
  set_statement_timeout(1500)

  
  def up
    create_table :creditors do |t|
      t.column :name, :string
      t.timestamps
end

  end
  def down
    drop_table :creditors

  end
end
