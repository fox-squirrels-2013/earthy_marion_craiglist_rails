class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :name
    	t.string :body
    	t.belongs_to :category

    	t.timestamps
    end
  end
end
