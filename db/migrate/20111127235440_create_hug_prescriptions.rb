class CreateHugPrescriptions < ActiveRecord::Migration
  def change
    create_table :hug_prescriptions do |t|
      t.string :prescription_title
      t.string :recipient_email
      t.datetime :start_date
      t.integer :user_id

      t.timestamps
    end
  end
end
