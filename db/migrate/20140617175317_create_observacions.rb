class CreateObservacions < ActiveRecord::Migration
  def change
    create_table :observacions do |t|
      t.string :text
      t.references :issue, index: true

      t.timestamps
    end
  end
end
