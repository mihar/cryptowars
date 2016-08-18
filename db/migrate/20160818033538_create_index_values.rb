class CreateIndexValues < ActiveRecord::Migration[5.0]
  def change
    create_table :index_values do |t|
      t.integer :index_id
      t.decimal :value
      t.decimal :value_diff
      t.decimal :value_diff_percent

      t.timestamps
    end
    add_index :index_values, :index_id
  end
end
