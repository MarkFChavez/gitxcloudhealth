class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :provider, :string, null: false
      t.column :uid, :string, null: false
      t.column :access_token, :string, null: false
      t.column :email, :string
      t.column :name, :string
      t.column :nickname, :string
      t.column :location, :string

      t.timestamps
    end

    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:uid, :provider], unique: true
  end
end
