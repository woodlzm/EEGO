class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
        t.integer :friend_id
        t.integer :status  # 0 not friend, 1 is friend, 2 pending
        t.timestamps null: false

        t.references :user
    end
  end
end
