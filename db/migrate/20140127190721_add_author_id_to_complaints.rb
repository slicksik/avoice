class AddAuthorIdToComplaints < ActiveRecord::Migration
  def change
    add_column :complaints, :author_id, :integer
  end
end
