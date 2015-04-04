class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "bu_id"
      t.string   "pin"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "email"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "access_level", default: 3
      
      t.timestamps
    end
  end
end
