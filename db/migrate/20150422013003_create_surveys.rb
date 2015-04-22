class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :q1
      t.string :q1_file
      t.string :q2
      t.string :q2_file
      t.string :q3
      t.string :q3_file
      t.string :q4
      t.string :q4_file
      t.string :q5
      t.string :q5_file
      t.string :q6
      t.string :q6_file
      t.string :q7
      t.string :q7_file
      t.string :q8
      t.string :q8_file
      t.string :q9
      t.string :q9_file
      t.string :q10
      t.string :q10_file
      t.string :q11
      t.string :q11_file
      t.string :q12
      t.string :q12_file
      t.string :q13
      t.string :q13_file
      t.string :q14
      t.string :q14_file
      t.string :q15
      t.string :q15_file
      t.string :q16
      t.string :q16_file
      t.string :q17
      t.string :q17_file
      t.string :q18
      t.string :q18_file
      t.string :q19
      t.string :q19_file
      t.string :q20
      t.string :q20_file

      t.timestamps
    end
  end
end
