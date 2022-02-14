class RemoveBackgroundImageFromClubs < ActiveRecord::Migration[6.0]
  def change
    remove_column :clubs, :background_image
  end
end
