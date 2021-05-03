class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :tag_id,  null: false
      t.integer :member,  null: false
      t.string :text, null: false
      t.timestamps
    end
  end
end
