class CreateProceedingLineSections < ActiveRecord::Migration
  def change
    create_table :proceeding_line_sections do |t|
      t.string :name
      t.references :line, index: true

      t.timestamps null: false
    end
  end
end
