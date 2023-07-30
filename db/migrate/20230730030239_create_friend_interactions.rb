class CreateFriendInteractions < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_interactions do |t|
      t.references :friend, null: false, foreign_key: true
      t.references :interaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
