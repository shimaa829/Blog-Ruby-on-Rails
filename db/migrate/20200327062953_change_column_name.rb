class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :text, :content
  end
end
