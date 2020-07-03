require('pry-byebug')
require_relative('models/customer')
require_relative('models/film')

customer1 = Customer.new({
    'name' => 'Tim',
    'funds' => '100'
})
customer1.save()

customer2 = Customer.new({
    'name' => 'Lisa',
    'funds' => '120'
})
customer2.save()

customer3 = Customer.new({
    'name' => 'Sally',
    'funds' => '150'
})
customer3.save()

film1 = Film.new({
    'title' => 'Jaws',
    'price' => '5'
})
film1.save()

film2 = Film.new({
    'title' => 'Jurassic Park',
    'price' => '10'
})
film2.save()

film3 = Film.new({
    'title' => 'Titanic',
    'price' => '15'
})
film3.save()




binding.pry
nil