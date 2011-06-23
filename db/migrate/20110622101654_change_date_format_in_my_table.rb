class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def self.up
    change_column :bookings, :from, :datetime
    change_column :bookings, :until, :datetime
  end

  def self.down
    change_column :bookings, :from, :date
    change_column :bookings, :until, :datetime
  end
end
