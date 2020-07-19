class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :date
      t.string :time
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
