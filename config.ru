require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
<<<<<<< HEAD
use UsersController
=======
use UserController
>>>>>>> e33dc94c4ccaf4aa76cc724718f02c6c1fbae002
use BooksController
