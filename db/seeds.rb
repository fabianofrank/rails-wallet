# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user = User.create(id: 1, name: 'Tom', email: 't@t.com', password: '123456');
@group = Group.create(name: 'Crypto', icon: 'Icon', user_id: @user.id)
@investment = Investment.create(name: 'NFTs', amount: 500, user_id: @user.id)
@group.investment.push(@investment)