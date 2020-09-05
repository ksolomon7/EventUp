class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date_and_time
      t.integer :price
      t.string :venue
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
