class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.text :topic
      t.integer :posts

      t.timestamps
      
      
    end
  end
end
