class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.string :title
      t.string :link
      t.string :pubDate
      t.string :description
      t.string :publisher
      t.string :category

      t.timestamps
    end
  end
end
