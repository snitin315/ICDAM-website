class AddRankToNewSpecialSession < ActiveRecord::Migration
  def change
    add_column :new_special_sessions, :rank, :integer, :default => 0
  end
end
