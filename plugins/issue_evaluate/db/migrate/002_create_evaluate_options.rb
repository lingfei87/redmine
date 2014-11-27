class CreateEvaluateOptions < ActiveRecord::Migration
  def change
    create_table :evaluate_options do |t|
      t.string :name
    end

  end
  
  def self.down
    drop_table :evaluate_options
  end
    
end
