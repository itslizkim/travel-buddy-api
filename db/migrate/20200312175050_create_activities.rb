class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
