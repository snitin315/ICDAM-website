class AddRankToAdvCom < ActiveRecord::Migration
  def change
    add_column :adv_coms, :rank, :integer, :default => 0
  end
end
