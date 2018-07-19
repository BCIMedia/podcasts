class AddItunesDataToSeries < ActiveRecord::Migration
  def change
    add_column :podcast_series, :subtitle, :string, after: :name
    add_column :podcast_series, :summary, :text, after: :subtitle
    add_column :podcast_series, :category, :string, after: :description
    add_column :podcast_series, :owner, :string, after: :category
    add_column :podcast_series, :page_link, :string, after: :category
    add_column :podcast_series, :itunes_type, :integer, default: 0, after: :page_link
    add_column :podcast_series, :complete, :boolean, default: false, after: :itunes_type
    add_column :podcast_series, :explicit, :boolean, default: false, after: :complete
  end
end
