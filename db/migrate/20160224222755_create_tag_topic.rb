class CreateTagTopic < ActiveRecord::Migration
  def change
    create_table :tag_topics do |t|
      t.boolean :news
      t.boolean :sports
      t.boolean :tech
      t.boolean :music
    end

    add_index :tag_topics, [:news, :sports, :tech, :music]
  end
end
