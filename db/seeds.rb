User.create(realname: 'Anthony Haler', username: 'Thallius', password: '1234')
User.create(realname: 'Michael Haler', username: 'Yamikamisama', password: '4321')

Lanlord.create(realname: 'Joe Shmo', username: 'Jmoney', password: '9018')
Lanlord.create(realname: 'Forest Gump', username: 'Ilovejenny', password: '1842')

Property.create(address: 'something street', number: '1212', user_id: '1', lanlord_id: '1')
Property.create(address: 'Pink Lion Lane', number: '10', user_id: '2', lanlord_id: '2')

Issue.create(name: 'Anthony Haler', address: 'something street', number: '1212', detail: 'My refrigerator stopped working.', user_id: '1', lanlord_id: '1')
Issue.create(name: 'Michael Haler', address: 'Pink Lion Lane', number: '10', detail: 'Mold in the walls please take a look.', user_id: '2', lanlord_id: '2')

