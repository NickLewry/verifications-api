# frozen_string_literal: true

class CreateVerificationSteps < Nandi::Migration
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
