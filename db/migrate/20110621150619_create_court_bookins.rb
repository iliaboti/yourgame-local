class CreateCourtBookins < ActiveRecord::Migration
  def self.up
    create_table :court_bookins do |t|
      t.string :booker
      t.date :from
      t.date :until
      t.references :court

      t.timestamps
    end
  end

  def self.down
    drop_table :court_bookins
  end
end
