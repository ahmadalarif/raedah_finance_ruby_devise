class AddDetailsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :mobile_number, :string
    add_column :users, :gender, :string
    add_column :users, :upload_cv, :string
  end
end
