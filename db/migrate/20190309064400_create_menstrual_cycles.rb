class CreateMenstrualCycles < ActiveRecord::Migration[5.2]
  def change
    create_table :menstrual_cycles do |t|
      t.references :user, foreign_key: true
      t.date :starting_date
      t.date :ending_date

      t.timestamps
    end
  end
end
