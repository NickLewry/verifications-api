# frozen_string_literal: true

class CreateVerificationJourneys < Nandi::Migration
  def up
    create_table :verification_journeys do |t|
      t.column :product, :string
      t.column :entity_type, :string
      t.column :geo, :string
      t.column :status, :string
      t.column :journey_config_name, :string
      t.column :journey_config_version, :string
      t.timestamps
    end
  end

  def down
    drop_table :verification_journeys
  end
end
