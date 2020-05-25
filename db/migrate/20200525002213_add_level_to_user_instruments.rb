class AddLevelToUserInstruments < ActiveRecord::Migration
  def change
    add_column :user_instruments, :level, :string
  end
end
