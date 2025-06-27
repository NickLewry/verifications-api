# frozen_string_literal: true

class CreateUsers < Nandi::Migration
  def up
    create_table :users do |t|
      t.string :given_name
      t.string :family_name
      t.integer :age
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
