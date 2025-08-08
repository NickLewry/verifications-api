class CreateVerificationManagers < ActiveRecord::Migration[7.1]
  
  set_lock_timeout(5000)
  set_statement_timeout(1500)

  
  def up
    create_table :verification_managers do |t|
      t.column :status, :string
      t.timestamps
end

  end
  def down
    drop_table :verification_managers

  end
end
