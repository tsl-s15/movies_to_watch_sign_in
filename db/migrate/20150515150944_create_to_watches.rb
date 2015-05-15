class CreateToWatches < ActiveRecord::Migration
  def change
    create_table :to_watches do |t|
      t.integer :movie_id
      t.integer :user_id

      t.timestamps

    end
  end
end
