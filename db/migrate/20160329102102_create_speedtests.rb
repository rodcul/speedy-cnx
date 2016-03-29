class CreateSpeedtests < ActiveRecord::Migration
  def change
    create_table :speedtests do |t|
      t.string :ssid
      t.decimal :ping
      t.decimal :upload
      t.decimal :download

      t.timestamps null: false
    end
  end
end
