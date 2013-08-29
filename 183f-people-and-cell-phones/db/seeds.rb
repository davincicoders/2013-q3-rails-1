cell_phone1 = CellPhone.create! serial_number: "12345"
Person.create! name: "Jill", cell_phone: cell_phone1

cell_phone2 = CellPhone.create! serial_number: "23456"
Person.create! name: "Jack", cell_phone: cell_phone2

Person.create! name: "Bob", cell_phone: nil

CellPhone.create! serial_number: "34567"
