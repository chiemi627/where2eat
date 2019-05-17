# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Eatery.delete_all
Eatery.create(name:"SALON DE CENT", address:"〒305-0005 茨城県つくば市天久保２丁目２０−７ レガートホソダ",tel:"029-858-7886",regular_holiday:"日曜日",open:"12:00",close:"21:30")
Eatery.create(name:"カレーうどん ZEYO", address:"〒305-0005 茨城県つくば市天久保２丁目６−１ ベスト ランド Ⅳ １Ｆ",tel:"029-854-1778",regular_holiday:"なし",open:"11:30",close:"23:00")
