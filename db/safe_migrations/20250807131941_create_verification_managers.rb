# frozen_string_literal: true

class CreateVerificationManagers < Nandi::Migration
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
