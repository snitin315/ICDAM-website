class AddDescriptionToNewSpecialSession < ActiveRecord::Migration
  def change
    add_column :new_special_sessions, :description, :string
  end
end
