class CreateProceedings < ActiveRecord::Migration
  def change
    create_table :proceedings do |t|
      t.string :title
      t.text :short_description
      t.text :long_description
      t.string :action_name

      t.timestamps null: false
    end
  end
end
