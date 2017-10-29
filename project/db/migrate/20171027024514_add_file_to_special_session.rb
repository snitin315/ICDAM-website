class AddFileToSpecialSession < ActiveRecord::Migration
  def change
    add_column :special_sessions, :file, :string
    add_column :special_sessions, :string, :string
  end
end
