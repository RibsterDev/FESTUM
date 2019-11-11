class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date_start
      t.date :date_end
      t.string :location
      t.string :periodicity
      t.string :category
      t.string :sub_category
      t.references :creator, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
