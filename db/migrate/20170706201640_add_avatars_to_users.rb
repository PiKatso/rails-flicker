class AddAvatarsToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :avatar
    end
  end

end
