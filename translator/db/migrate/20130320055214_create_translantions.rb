class CreateTranslantions < ActiveRecord::Migration
  def change
    create_table :translantions do |t|
      t.text :original
      t.text :translated

      t.timestamps
    end
  end
end
