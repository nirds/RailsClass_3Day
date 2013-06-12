class CreateCalculations < ActiveRecord::Migration
  def change
    create_table :calculations do |t|
      t.string :input
      t.string :function
      t.string :output

      t.timestamps
    end
  end
end
