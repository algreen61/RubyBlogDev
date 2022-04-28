class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :string
      t.string :body
      t.string :text
      t.string :article
      t.string :references

      t.timestamps
    end
  end
end
