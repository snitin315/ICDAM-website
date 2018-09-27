class AddRankToTechCom < ActiveRecord::Migration
  def change
    add_column :tech_coms, :rank, :integer, :default => 0
  end
end
