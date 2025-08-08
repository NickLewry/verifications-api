class CreateVerifications < ActiveRecord::Migration[7.1]
  
  set_lock_timeout(5000)
  set_statement_timeout(1500)

  
  def up
    create_table :verifications do |t|
      t.column :type, :string
      t.column :status, :string
      t.column :successful_method, :string
      t.column :provider_used, :string
      t.column :expires_at, :string
      t.timestamps
end

  end
  def down
    drop_table :verifications

  end
end
