class CreateInteractions < ActiveRecord::Migration[7.0]
  def change
    create_table :interactions do |t|
      t.datetime :occured_at
      t.string :notes
      t.string :name

      t.timestamps
    end
  end
end
