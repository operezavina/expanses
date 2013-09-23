class CreateExpanses < ActiveRecord::Migration
  def change
    create_table :expanses do |t|
      t.text :detail
      t.decimal :amount
      t.date :dated

      t.timestamps
    end
  end
end
