ActiveRecord::Schema.define(:version => 0) do

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
