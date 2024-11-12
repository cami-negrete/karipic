class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :content
      t.string :description

      t.timestamps
    end
  end
end
