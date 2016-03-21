class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video_id
      t.string :minute
      t.string :thumbnail_url
    end
  end
end
