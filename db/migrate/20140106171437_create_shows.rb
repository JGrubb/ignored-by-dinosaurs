class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.date :date
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.string :venue_phone
      t.text :notes
      t.string :tickets_url

      t.timestamps
    end
  end
end
