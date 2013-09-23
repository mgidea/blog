class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :subject
      t.text :story

      t.timestamps
    end
  end
end
