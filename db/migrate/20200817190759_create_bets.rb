class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.integer :user_id
      t.integer :bet_amount
      t.integer :round_id
      t.timestamps
    end
  end
end
