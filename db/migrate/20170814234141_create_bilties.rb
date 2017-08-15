class CreateBilties < ActiveRecord::Migration[5.0]
  def change
    create_table :bilties do |t|
      t.string :long_url
      t.string :short_url
      t.integer :click_count, default: 0

      t.timestamps
    end
  end
end
