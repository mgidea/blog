class AddNullsToPosting < ActiveRecord::Migration
  def change
    change_column :postings, :subject, :string, null: false
    change_column :postings, :story, :text, null: false
  end
end
