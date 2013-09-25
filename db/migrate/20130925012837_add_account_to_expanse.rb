class AddAccountToExpanse < ActiveRecord::Migration
  def change
    add_column :expanses, :account, :string
  end
end
