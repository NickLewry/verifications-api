# frozen_string_literal: true

class CreateCreditorsTable < Nandi::Migration
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
