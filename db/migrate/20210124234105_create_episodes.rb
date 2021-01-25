class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title, index: true
      t.string :plot
      t.integer :episode_number
      t.belongs_to :season, foreing_key: true, index: true

      t.timestamps
    end
  end
end
