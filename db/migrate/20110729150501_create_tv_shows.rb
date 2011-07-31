class CreateTvShows < ActiveRecord::Migration
  def self.up
    create_table :tv_shows do |t|
      t.string :name
      t.integer :season
      t.boolean :currently_on
      t.integer :channel_id
      t.date :last_on
      t.integer :us_season

      t.timestamps
    end
  end

  def self.down
    drop_table :tv_shows
  end
end
