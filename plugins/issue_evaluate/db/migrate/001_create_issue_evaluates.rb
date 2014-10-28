class CreateIssueEvaluates < ActiveRecord::Migration
  def self.up
    create_table :issue_evaluates do |t|
      t.integer :issue_status_id
      t.string :score
      t.text :advice
      t.references :issue, :null => false
    end
  end
end
