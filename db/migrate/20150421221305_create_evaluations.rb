class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :published_articles
      t.string :accepted_articles
      t.string :submitted_articles
      t.string :proceedings
      t.string :presentations
      t.string :other
      t.string :funded_proposals
      t.string :submitted_proposals
      t.string :teaching
      t.string :teaching_achievements

      t.timestamps
    end
  end
end
