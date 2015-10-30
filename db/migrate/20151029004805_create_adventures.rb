class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :location
      t.integer :num_people
      t.integer :num_day
      t.string :plan

      t.references :user
      t.timestamps null: false
    end
  end
end
