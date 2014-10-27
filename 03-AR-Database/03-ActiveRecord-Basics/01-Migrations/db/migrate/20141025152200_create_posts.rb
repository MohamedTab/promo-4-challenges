class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :name
      p.string :url
      p.timestamps
    end
  end
end
