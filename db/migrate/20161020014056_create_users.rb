class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
     t.column :name, :string
   
    end

      User.create :name => "kaluvoya"
      User.create :name => "nellore"
      User.create :name => "gontur"
      User.create :name => "narasaraopet"
      User.create :name => "hyderabad"

  end
   def self.down
      drop_table :users
   end
end

