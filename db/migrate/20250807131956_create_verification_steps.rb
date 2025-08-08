class CreateVerificationSteps < ActiveRecord::Migration[7.1]
  
  set_lock_timeout(5000)
  set_statement_timeout(1500)

  
  def up
    create_table :verification_steps do |t|
      t.column :type, :string
      t.column :config_type, :string
      t.column :status, :string
      t.timestamps
end

  end
  def down
    drop_table :verification_steps

  end
end
