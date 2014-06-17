class CreateThermostaModels < ActiveRecord::Migration
  def change
    create_table :thermosta_models do |t|
      t.string :name
      t.references :thermostat, index: true

      t.timestamps
    end
  end
end
