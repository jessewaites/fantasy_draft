class AddDraftedToDraftees < ActiveRecord::Migration
  def change
    add_column :draftees, :drafted, :boolean, default: false
  end
end
