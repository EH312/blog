class CreateLinks < ActiveRecord::Migration[7.2]
  def change
    create_table :links do |t|
      t.string :link
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
