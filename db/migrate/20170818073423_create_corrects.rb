class CreateCorrects < ActiveRecord::Migration
  def change
    create_table :corrects do |t|
      t.integer :user_id
      t.integer :company_id
      t.timestamps
    end
  end
end
