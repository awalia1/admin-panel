class ChangeStudentsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :sid
  end
end
