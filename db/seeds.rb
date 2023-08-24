User.create(firstname: 'Ryan',lastname: 'Stadler', username: 'Finkle', address: '12 Golden Triangle, Cherry Hill, NJ',phonenumber: '8562297878', password: '123')
User.create(firstname: 'Dereck',lastname: 'Berchutte', username: 'EaglesFan', address: '2020 west kngs hwy, Cherry Hill, NJ', phonenumber: '8562297878', password: '123')
User.create(firstname: 'Cooper',lastname: 'Loopa', username: '', address: ' 33 Core Snake Ave, Cherry Hill, NJ', phonenumber: '8562297878', password: '123')

Owner.create(firstname: 'Tiffany',lastname: 'Peon', username: 'GuineaGirl', address: '12 Queens Boulevard, Elmhurst, NY', phonenumber: '8565626606', password: '123')
Owner.create(firstname: 'James',lastname: 'Bond', username: 'Bond Corperation', address: '12 Queens Boulevard, Elmhurst, NY', phonenumber: '8565626606', password: '123')


Issue.create(name: 'Ryan Stadler', address: '12 Golden Triangle, Cherry Hill, NJ', status: 'pending', url: 'http://bit.ly/2yVQirR', detail: 'Everything is broken windows, floor, roof. Please come and fix everything right away!', user_id: '1', owner_id: '1')
Issue.create(name: 'Dereck Berchutte', address: '2020 west kngs hwy, Cherry Hill, NJ', status: 'pending', url: 'http://bit.ly/2hltl7t', detail: 'The sink has been broken for a very long time and I would like to get it fixed as soon as possible. Thank you very much.', user_id: '2', owner_id: '1')
Issue.create(name: 'Cooper Loopa', address: ' 33 Core Snake Ave, Cherry Hill, NJ', status: 'pending', url: 'http://bit.ly/2yWqXhM', detail: 'The roof has been making weird sounds all month and finally today it fell into the house. Please come by when you have time to take a look or maybe fix it.', user_id: '4', owner_id: '1')
