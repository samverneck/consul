class CreateProceedingLines < ActiveRecord::Migration
  def change
    create_table :proceeding_lines do |t|
      t.references :proceeding, index: true, foreign_key: true
      t.string :title
      t.string :action_name
      t.string :type, default: "Debate"
      t.integer :comments_count

      t.timestamps null: false
    end
  end
end
