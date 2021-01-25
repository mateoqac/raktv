class AddVideoQualityToPurchase < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE video_quality AS ENUM ('hd', 'sd');
    SQL
    add_column :purchases, :video_quality, :video_quality
  end
  def down
    remove_column :purchases, :video_quality
    execute <<-SQL
      DROP TYPE video_quality;
    SQL
  end
end
