class AddFieldsToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :ct1, :string
    add_column :surveys, :crn1, :string
    add_column :surveys, :no1, :string
    add_column :surveys, :ct2, :string
    add_column :surveys, :crn2, :string
    add_column :surveys, :no2, :string
    add_column :surveys, :ct3, :string
    add_column :surveys, :crn3, :string
    add_column :surveys, :no3, :string
    add_column :surveys, :ct4, :string
    add_column :surveys, :crn4, :string
    add_column :surveys, :no4, :string
    add_column :surveys, :ct5, :string
    add_column :surveys, :crn5, :string
    add_column :surveys, :no5, :string
    add_column :surveys, :ct6, :string
    add_column :surveys, :crn6, :string
    add_column :surveys, :no6, :string
    add_column :surveys, :ct7, :string
    add_column :surveys, :crn7, :string
    add_column :surveys, :no7, :string
    add_column :surveys, :ct8, :string
    add_column :surveys, :crn8, :string
    add_column :surveys, :no8, :string
  end
end
