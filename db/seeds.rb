# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CompletedTest.destroy_all
# Answer.destroy_all
# Question.destroy_all
# Test.destroy_all
# User.destroy_all
Category.destroy_all

frontend = Category.create(title: 'Frontend')
machine_learning = Category.create(title: 'Machine Learning')
mobile_development = Category.create(title: 'Mobile Development')
backend = Category.create(title: 'Backend')

# neo = User.create(username: 'Neo', email: 'neo@matrix.com')
# trinity = User.create(username: 'Trinity', email: 'trinity@matrix.com')
# morpheus = User.create(username: 'Morpheus', email: 'morpheus@matrix.com')

# ruby = Test.create(title: 'Ruby', level: 2, category_id: backend.id, author_id: neo.id)
# html = Test.create(title: 'HTML', level: 0, category_id: frontend.id, author_id: trinity.id)
# java = Test.create(title: 'Java', level: 4, category_id: mobile_development.id, author_id: trinity.id)
# golang = Test.create(title: 'Golang', level: 3, category_id: frontend.id, author_id: trinity.id)
# python = Test.create(title: 'Python', level: 2, category_id: machine_learning.id, author_id: morpheus.id)

# question01 = Question.create(body: 'С помощью какого тега в HTML создаются ссылки?', test_id: html.id)
# question02 = Question.create(body: 'Какой из следующих операторов уменьшает целочисленное значение на единицу в Go?', test_id: golang.id)
# question03 = Question.create(body: 'Какую задачу будет пытаться выполнить команда rake вызванная без аргументов?', test_id: ruby.id)
# question04 = Question.create(body: 'Что выведет следующая строка кода? print ("{0:*^15".format(1234567))?', test_id: python.id)
# question05 = Question.create(body: 'Какая максимальная длина имени переменной допустима в Java в соответствии со спецификацией?', test_id: java.id)
# question06 = Question.create(body: 'Какой символ необходимо использовать для определения параметра метода, принимающего аргументы переменной длинны?', test_id: ruby.id)

# answer01_01 = Answer.create(title: '<a>', question_id: question01.id, correct: true)
# answer01_02 = Answer.create(title: '<b>', question_id: question01.id, correct: false)
# answer01_03 = Answer.create(title: '<p>', question_id: question01.id, correct: false)

# answer02_01 = Answer.create(title: '++', question_id: question02.id, correct: false)
# answer02_02 = Answer.create(title: '^', question_id: question02.id, correct: false)
# answer02_03 = Answer.create(title: '--', question_id: question02.id, correct: true)

# answer03_01 = Answer.create(title: 'Первую найденую задачу в файле', question_id: question03.id, correct: true)
# answer03_02 = Answer.create(title: 'Первую найденную задачу в файле для которой определён метод desc', question_id: question03.id, correct: false)
# answer03_03 = Answer.create(title: 'initialize', question_id: question03.id, correct: false)
# answer03_04 = Answer.create(title: 'Команда rake требует указывать название задачи в обязательном порядке', question_id: question03.id, correct: false)

# answer04_01 = Answer.create(title: '1234567', question_id: question04.id, correct: false)
# answer04_02 = Answer.create(title: '****1234567****', question_id: question04.id, correct: true)
# answer04_03 = Answer.create(title: 'ошибка', question_id: question04.id, correct: false)
# answer04_04 = Answer.create(title: '*****1234567***', question_id: question04.id, correct: false)

# answer05_01 = Answer.create(title: '256 символов', question_id: question05.id, correct: false)
# answer05_02 = Answer.create(title: '1024 символов', question_id: question05.id, correct: false)
# answer05_03 = Answer.create(title: '8 бит', question_id: question05.id, correct: false)
# answer05_04 = Answer.create(title: 'не ограничена', question_id: question05.id, correct: true)

# answer06_01 = Answer.create(title: '*', question_id: question06.id, correct: true)
# answer06_02 = Answer.create(title: '&', question_id: question06.id, correct: false)
# answer06_03 = Answer.create(title: '^', question_id: question06.id, correct: false)
# answer06_04 = Answer.create(title: '**', question_id: question06.id, correct: false)

# completed_test01 = CompletedTest.create(user_id: neo.id, test_id: ruby.id)
# completed_test02 = CompletedTest.create(user_id: neo.id, test_id: html.id)
# completed_test03 = CompletedTest.create(user_id: trinity.id, test_id: java.id)
# completed_test04 = CompletedTest.create(user_id: morpheus.id, test_id: python.id)
# completed_test04 = CompletedTest.create(user_id: morpheus.id, test_id: golang.id)
