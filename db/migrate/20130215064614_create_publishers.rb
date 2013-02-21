class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :category
      t.string :link

      t.timestamps
    end
  end
end
