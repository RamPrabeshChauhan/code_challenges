# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_241_219_070_422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'challenges', force: :cascade do |t|
    t.string 'title', null: false
    t.text 'description', null: false
    t.date 'start_date', null: false
    t.date 'end_date', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
