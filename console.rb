require('pry-byebug')
require_relative('models/customer')

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





binding.pry
nil