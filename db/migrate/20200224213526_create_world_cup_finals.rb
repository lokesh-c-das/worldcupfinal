class CreateWorldCupFinals < ActiveRecord::Migration[6.0]
  def change
    create_table :world_cup_finals do |t|
      t.integer :year
      t.string :champion
      t.integer :champion_score
      t.string :runner_up
      t.integer :runner_up_score

      t.timestamps
    end
  end
end
