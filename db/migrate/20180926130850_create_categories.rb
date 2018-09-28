class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, comment: 'Categories of allowed notification types' do |t|
      t.string :name, index: { unique: true }, null: false
      t.boolean :active, default: true
      t.integer :parent_id, null: true, index: true
      t.timestamps
    end

    add_foreign_key :categories, :categories, column: :parent_id
  end
end
