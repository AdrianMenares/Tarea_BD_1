class AddSectionIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :section_id, :integer
  end
end
