# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Data is loading'

users = User.create([
                      { name: 'Vitaliy', surname: 'Bax', patronymic: 'Anatolievich', email: 'vs@gmail.com', gender: 'mail', age: 34, nationality: 'BE', country: 'SPB' },
                      { name: 'Roman', surname: 'Bax', patronymic: 'Petrovich', email: 'roman@gmail.com', gender: 'mail', age: 33, nationality: 'RU', country: 'SPB' },
                    ])

skils = Skil.create([
                      { name: 'soft' },
                      { name: 'hard' },
                    ])

interests = Interest.create([
                              { name: 'cs' },
                              { name: 'dota' },
                            ])

puts 'Data loaded!'
