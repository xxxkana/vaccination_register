class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.references :public_uid, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
