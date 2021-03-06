class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :title, null: false
      t.string :psid, null: false
      t.integer :member_id,  null: false
      t.string :text, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
