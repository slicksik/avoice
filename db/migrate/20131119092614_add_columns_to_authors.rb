class AddColumnsToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :provider, :string
    add_column :authors, :uid, :string
    add_column :authors, :name, :string
  end
end
