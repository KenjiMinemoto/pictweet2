class RenameNicknameColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :Nickname, :nickname
  end
end
