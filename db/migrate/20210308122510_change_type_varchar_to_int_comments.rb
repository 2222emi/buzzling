class ChangeTypeVarcharToIntComments < ActiveRecord::Migration[5.2]
  def up
    change_column :comments, :user_id, :integer
  end

  def down
    change_column :comments, :user_id, :varchar
  end
end
