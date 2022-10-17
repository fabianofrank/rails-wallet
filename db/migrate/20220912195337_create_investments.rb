class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.string :name
      t.float :amount
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
