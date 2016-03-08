class CreateSurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.string :name
      t.boolean :puppies
      t.boolean :rainbows
      t.boolean :chocolate
      t.boolean :cold_hard_cash

      t.timestamps null: false
    end
  end
end
