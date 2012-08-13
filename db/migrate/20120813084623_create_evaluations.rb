class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.text :answer
      t.boolean :executed
      t.string :name
      t.integer :tries

      t.timestamps
    end
  end
end
