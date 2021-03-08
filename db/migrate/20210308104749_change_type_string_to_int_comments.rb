class ChangeTypeStringToIntComments < ActiveRecord::Migration[5.2]
  def up
    change_column :comments, :user_id, :interger
  end

  def down
    change_column :comments, :user_id, :string
  end

end
