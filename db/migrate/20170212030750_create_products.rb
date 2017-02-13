class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :upc
      t.string :image_url

      t.timestamps
    end
  end
end
