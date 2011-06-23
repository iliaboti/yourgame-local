class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string :booker
      t.datetime :from
      t.datetime :until
      t.references :court

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
