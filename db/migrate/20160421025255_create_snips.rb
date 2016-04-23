class CreateSnips < ActiveRecord::Migration
  def change
    create_table :snips do |t|
      t.string :title
      t.text :code

      t.timestamps null: false
    end
  end
end
