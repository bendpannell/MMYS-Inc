class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
    	t.string :name
    	t.string :image
    	t.string :website
 

      t.timestamps
    end
  end
end
