class CreateIssueEvaluates < ActiveRecord::Migration
  def change
    create_table :issue_evaluates do |t|
      t.integer :issue_id
      t.integer :issue_status_id
      t.string :score
      t.text :advice
    end
  end
end
