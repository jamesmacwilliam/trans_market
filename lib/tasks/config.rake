namespace :config do

  desc 'setup project'
  task :initialize do
    begin
      Rake::Task['db:drop'].invoke
    rescue
    end
    Rake::Task['config:seed'].invoke
  end

  desc 'create, migrate, then seed database'
  task seed: [
    'db:create',
    'db:migrate',
    'db:fixtures:load',
    'test:prepare'
  ]
end
