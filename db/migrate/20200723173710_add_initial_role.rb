class AddInitialRole < ActiveRecord::Migration[6.0]
  def up
    Role.create(role: 'admin')
    Role.create(role: 'user')
    Role.create(role: 'guest')
  end

  def down
    Role.delete_all
  end
end
