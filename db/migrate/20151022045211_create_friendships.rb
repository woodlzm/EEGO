class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
        t.integer : uid1
        t.integer : uid2
        t.integer : status  # 0 not friend, 1 is friend, 2 pending
        t.timestamps null: false

        t.references :user
    end
  end
end
