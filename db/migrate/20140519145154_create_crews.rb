class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :name
      t.integer :member

      t.timestamps
    end
  end
end
