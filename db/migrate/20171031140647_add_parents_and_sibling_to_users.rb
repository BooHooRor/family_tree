class AddParentsAndSiblingToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :parents, foreign_key: "parents_id"
    add_reference :users, :sibling, foreign_key: "sibling_id"
  end
end
