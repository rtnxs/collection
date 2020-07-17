class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :city
      t.string :year
      t.references :type, null: false, foreign_key: true
      # t.references :photo, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      # t.references :comment, null: false, foreign_key: true
      t.decimal :price_current
      t.decimal :price_purchase

      t.timestamps
    end
  end
end
