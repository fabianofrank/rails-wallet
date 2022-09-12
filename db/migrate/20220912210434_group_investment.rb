class GroupInvestment < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_operations do |t|
      t.references :group, null: false, foreign_key: true
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
