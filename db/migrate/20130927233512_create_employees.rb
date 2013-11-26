class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lastname
      t.date :dateofbirthday
      t.string :department
      t.text :address
      t.string :phone
      t.string :mobile
      t.string :email
      t.decimal :salary

      t.timestamps
    end
  end
end
