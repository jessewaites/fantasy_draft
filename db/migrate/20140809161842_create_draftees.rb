class CreateDraftees < ActiveRecord::Migration
  def change
    create_table :draftees do |t|
      t.string :fan_name
      t.string :img_url
      t.string :fav_team
      t.text :why_draft_me
      t.string :fav_bose_product
      t.integer :user_id
      t.integer :fan_score
      t.references :user, index: true

      t.timestamps
    end
  end
end
