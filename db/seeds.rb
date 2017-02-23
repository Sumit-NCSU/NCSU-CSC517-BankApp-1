# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: '0', name: 'Admin', email: 'admin@ncsu.edu', password: 'password', is_admin: 1)
User.create(id: '1', name: 'User', email: 'user@ncsu.edu', password: 'password', is_admin: 0)
User.create(id: '2', name: 'Another', email: 'user2@ncsu.edu', password: 'password', is_admin: 0)

Account.create(id:1, account_number: '121212121', user_id: 1, status:'active', balance:1000)
Account.create(id:2, account_number: '343434343', user_id: 2, status:'active', balance:2000)

Transaction.create(id:1, txn_type:'send', amount:50, to_account:'121212121', from_account:'343434343', status:'pending')