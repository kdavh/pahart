namespace :initdb do
  desc "initialize if not already"
  task run: :environment do
    database_exists =
      begin
        ActiveRecord::Base.connection
        true
      rescue ActiveRecord::NoDatabaseError
        false
      end

    if !database_exists
      Rake::Task["db:create"].invoke
    end

    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end
end
