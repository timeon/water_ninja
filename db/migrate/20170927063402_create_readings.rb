class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.decimal :value
      t.datetime :read_at
      t.references :user, index: true

      t.timestamps
    end
  end
end
