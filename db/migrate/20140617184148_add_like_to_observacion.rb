class AddLikeToObservacion < ActiveRecord::Migration
  def change
    add_column :observacions, :like, :integer
  end
end
