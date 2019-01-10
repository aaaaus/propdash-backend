class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :ssn
      t.string :date_of_birth

      t.timestamps
    end
  end
end
