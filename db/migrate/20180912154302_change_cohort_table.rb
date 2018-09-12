class ChangeCohortTable < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :teacher_id, :string
  end
end
