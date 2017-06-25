class CreateFacebookAccessTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :facebook_access_tokens do |t|
      t.string :token

      t.timestamps
    end
  end
end
