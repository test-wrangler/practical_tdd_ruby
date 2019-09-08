RSpec.describe "Create" do
  it "create" do
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: ':memory:'
    )
    ActiveRecord::Tasks::DatabaseTasks.migrate
    10000.times do
      Taco.create!(name: 'Steak')
    end
  end
end