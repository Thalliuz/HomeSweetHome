User.create(firstname: 'Anthony',lastname: 'Haler', username: 'Thallius', password: '1234')
User.create(firstname: 'Michael',lastname: 'Haler', username: 'Yamikamisama', password: '4321')

Owner.create(firstname: 'Joe',lastname: 'Shmo', username: 'Jmoney', address: '14 Mundo street', password: '9018')
Owner.create(firstname: 'Finkle',lastname: 'Howard', username: 'Ilovejenny', address: '90 Flamingo dr.', password: '1842')

Property.create(address: 'something street', user_id: '1', owner_id: '1')
Property.create(address: 'Pink Lion Lane', user_id: '2', owner_id: '2')

Issue.create(name: 'Anthony Haler', address: 'something street', detail: 'My refrigerator stopped working.', status: 'pending', user_id: '1', owner_id: '1')
Issue.create(name: 'Michael Haler', address: 'Pink Lion Lane', detail: 'Mold in the walls please take a look.', status: 'pending', user_id: '2', owner_id: '2')

