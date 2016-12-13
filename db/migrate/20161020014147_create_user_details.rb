class CreateUserDetails < ActiveRecord::Migration
   
   def self.up
      create_table :user_details do |t|
         t.column :name, :string, :limit => 32, :null => false
          t.column :user_id, :integer
         t.column :age, :integer
         t.column :sex, :string
         t.column :mobile_number, :integer
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :user_details
   end
end


