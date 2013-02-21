class AddNameToPublisher < ActiveRecord::Migration
  def change
    add_column :publishers, :name, :string
  end
end
