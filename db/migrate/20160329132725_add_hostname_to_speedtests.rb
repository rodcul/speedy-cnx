class AddHostnameToSpeedtests < ActiveRecord::Migration
  def change
    add_column :speedtests, :hostname, :string
  end
end
