class AddQuestionsDailyAccessToDisciplines < ActiveRecord::Migration[5.2]
  def self.up
    add_column :disciplines, :questions_daily_access, :integer, null: false, default: 0
  end

  def self.down
    remove_column :disciplines, :questions_daily_access
  end
end
