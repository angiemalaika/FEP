class AddFieldToEvaluations < ActiveRecord::Migration
  def change
    add_column :evaluations, :published_articles_file, :string
    add_column :evaluations, :accepted_articles_file, :string
    add_column :evaluations, :submitted_articles_file, :string
    add_column :evaluations, :proceedings_file, :string
    add_column :evaluations, :presentations_file, :string
    add_column :evaluations, :other_file, :string
    add_column :evaluations, :funded_proposals_file, :string
    add_column :evaluations, :submitted_proposals_file, :string
    add_column :evaluations, :teaching_file, :string
    add_column :evaluations, :teaching_achievements_file, :string
  end
end
