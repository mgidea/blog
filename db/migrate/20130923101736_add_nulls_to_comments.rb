class AddNullsToComments < ActiveRecord::Migration
  def change
    change_column :comments, :body, :text, null: false
    change_column :comments, :posting_id, :integer, null: false

  end
end
