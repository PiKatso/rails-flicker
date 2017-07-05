class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.column :image, :string
      t.column :content, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
