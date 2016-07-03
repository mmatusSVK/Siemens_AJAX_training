class AddAuthorToCitations < ActiveRecord::Migration
  def change
    add_column :citations, :author, :string
  end
end
