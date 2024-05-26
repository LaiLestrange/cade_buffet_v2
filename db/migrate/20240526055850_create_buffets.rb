class CreateBuffets < ActiveRecord::Migration[7.1]
  def change
    create_table :buffets do |t|
      t.string :name
      t.string :company_name
      t.string :license_number
      t.string :phone_number
      t.string :email
      t.string :description

      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
