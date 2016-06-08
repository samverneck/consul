class CreateProceedingLineProposals < ActiveRecord::Migration
  def change
    create_table :proceeding_line_proposals do |t|
      t.references :line, index: true
      t.references :section, index: true
      t.integer :author_id, index: true
      t.string :title
      t.text :description
      t.integer :comments_count
      t.integer :cached_votes_total
      t.integer :cached_votes_up
      t.integer :cached_votes_down
      t.integer :cached_votes_score
      t.integer :flags_count

      t.timestamps null: false
    end
  end
end
