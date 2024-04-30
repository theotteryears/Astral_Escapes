class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :visitor_id, null: false, foreign_key: true
      t.references :planet_id, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.string :status

      t.timestamps
    end
  end
end
