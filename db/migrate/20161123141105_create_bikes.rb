class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :modelo
      t.integer :year
      t.belongs_to :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
