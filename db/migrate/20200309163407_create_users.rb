class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :avatar
      t.string :role, default: 'user'

      t.timestamps
    end
  end
end
