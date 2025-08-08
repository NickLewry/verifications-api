# frozen_string_literal: true

class CreateVerificationAttempts < Nandi::Migration
  def up
    create_table :verification_attempts do |t|
      t.column :type, :string
      t.column :status, :string
      t.column :provider_used, :string
      t.column :method_attempted, :string
      t.timestamps
    end
  end

  def down
    drop_table :verification_attempts
  end
end
