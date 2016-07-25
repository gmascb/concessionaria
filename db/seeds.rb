# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Guilherme", email:"gmascb@gmail.com", password: "barbosa")
User.create(name: "Bruno", email:"bruno@bruno.com", password: "123456")
Local.create(descricao: "1º Andar")
Local.create(descricao: "2º Andar")
Local.create(descricao: "3º Andar")
Local.create(descricao: "Garagem")
Local.create(descricao: "Pátio")
MeioPagamento.create(numparcelas: 1, tipo: 1, descricao:"Dinheiro")
Vendedor.create(nome:"José")
Vendedor.create(nome:"Marcos")
Vendedor.create(nome:"Carlos")
Banco.create(nome:"Banco do Brasil")
Banco.create(nome:"Banco Itau")
Banco.create(nome:"Banco Santander")
Banco.create(nome:"Banco Caixa Econômica Federal")
Customer.create(nome:"José", telefone:"984226635", endereco:"Rua XYZ", cpfcnpj:"10198438622", clioufor:2, email:"jose@gmail.com")