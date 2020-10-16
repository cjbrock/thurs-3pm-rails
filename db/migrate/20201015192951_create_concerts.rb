class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :location
      t.string :tour
      t.belongs_to :fan, null: false, foreign_key: true
      t.belongs_to :artist, null: false, foreign_key: true
    end
  end
end
