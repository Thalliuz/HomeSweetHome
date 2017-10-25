User.create(firstname: 'Anthony',lastname: 'Haler', username: 'Thallius', password: '1234')
User.create(firstname: 'Michael',lastname: 'Haler', username: 'Yamikamisama', password: '4321')

Owner.create(firstname: 'Joe',lastname: 'Shmo', username: 'Jmoney', address: '14 Mundo street', password: '9018')
Owner.create(firstname: 'Finkle',lastname: 'Howard', username: 'Ilovejenny', address: '90 Flamingo dr.', password: '1842')

Property.create(address: 'something street', number: '1212', user_id: '1', owner_id: '1')
Property.create(address: 'Pink Lion Lane', number: '10', user_id: '2', owner_id: '2')

Issue.create(name: 'Anthony Haler', address: 'something street', number: '1212', detail: 'My refrigerator stopped working.', user_id: '1', owner_id: '1')
Issue.create(name: 'Michael Haler', address: 'Pink Lion Lane', number: '10', detail: 'Mold in the walls please take a look.', user_id: '2', owner_id: '2')

