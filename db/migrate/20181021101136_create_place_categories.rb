class CreatePlaceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :place_categories do |t|
      t.belongs_to :place
      t.belongs_to :category
    end
  end
end
