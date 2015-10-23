class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :sender_user_id
      t.string :message

      t.references :user

      t.timestamps null: false
    end
  end
end
