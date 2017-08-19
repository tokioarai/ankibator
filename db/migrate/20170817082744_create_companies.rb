class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string      :name
      t.integer     :code
      t.string      :foundation
      t.string      :industry
      t.integer     :answer1
      t.integer     :answer2
      t.integer     :sales
      t.integer     :profit
      t.string      :kessan
      t.timestamps
    end
  end
end
