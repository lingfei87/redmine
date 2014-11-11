class CreateEvaluateOptions < ActiveRecord::Migration
  def change
    create_table :evaluate_options do |t|

      t.string :name
      t.references :issue_evaluate, :null => false

    end

  end
end
