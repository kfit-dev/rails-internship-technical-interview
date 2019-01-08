# README

### Prerequisite

Make sure your laptop has working installation of:
1. Ruby version 2.2 or above
2. SQLite3 database
3. RubyGems packaging system.
4. Rails version 5.0 or above
5. Git

Reference:
1. https://gorails.com/setup
2. https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
3. https://guides.rubyonrails.org/v5.0/getting_started.html


### How to start

1. Fork this repo to your own github account.
2. Make sure you can boot up the Rails server in your local environment without any issue.
3. Push your updated branches back to your github so that we can review your code.

### Part 1
To start develop a new project, we need to have some data in our database
so that we can test our code easily. So we need to make sure our seed file is working
properly in the first place. Unfortunately some code in the seed file is broken.
We will need your help to fix it.

Requirement:
1. Check out to branch `fix-broken-users-seed`
2. Fix the broken seed file `db/seeds.rb`
3. Use command `bundle exec rake db:seed` to seed data to the database
4. Commit the code changes to the same git branch `fix-broken-users-seed`

### Part 2

As a good software engineer, debugging skill is very crucial. There are some
code are deleted/added purposely to make some of the feature not working properly.
Fortunately we write some unit test to help us idenfity which area is broken.
Hence, you will need to help us fix all the bugs in current code base.

Requirement:
1. Check out to branch `fix-broken-users-management-pages`
2. Fix all the bugs that presence in `user` model, controller, and views.
3. Fix missing routes in `config/routes.rb`
4. Build a logic in validate `user` membership code format, in `app/models/user.rb`
5. use command `bundle exec rspec` to run the unit tests and verify all the bugs are fixed.
6. Commit the code changes to the same git branch `fix-broken-users-management-pages`

### Part 3

We have new feature request now. We want to let user to create new vouchers,
hence we need to store the voucher information in our database. Remember,
one user can always create more than 1 voucher.

Requirement:
1. Create a new model `voucher`
2. `voucher` table should consists of `name`, `expiry_at`, `created_at` and `updated_at`.
3. `name` value must be always unique but case insensitive.
4. Build a one to many relationship between `user` and `voucher` models.
5. Commit all your changes in a new git branch `feature/new-user-vouchers-model`.
6. (Optional) Write unit test to make sure your code is working.

### Part 4 (optional)

Is time to showcase your CSS/Javascript magic to develop a beautiful web page.

There is no specific requirement for this part,
You can continue from Part 3 or create a totally new page to showcase your html/css/javascript knowledge.
