class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|

      t.timestamps
      t.string :title, null: false
      t.text :text, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
