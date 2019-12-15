# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.destroy_all
Category.destroy_all
Question.destroy_all
Test.destroy_all
User.destroy_all
CompletedTest.destroy_all

backend = Category.create(title: 'Backend')
frontend = Category.create(title: 'Frontend')
machine_learning = Category.create(title: 'Machine Learning')
mobile_development = Category.create(title: 'Mobile Development')

neo = User.create(username: 'Neo')
trinity = User.create(username: 'Trinity')
morpheus = User.create(username: 'Morpheus')

ruby = Test.create(title: 'Ruby', level: 2, category_id: backend.id, author: neo.id)
html = Test.create(title: 'HTML', level: 0, category_id: frontend.id, author: neo.id)
java = Test.create(title: 'Java', level: 4, category_id: mobile_development.id, author: trinity.id)
golang = Test.create(title: 'Golang', level: 3, category_id: frontend.id, author: trinity.id)
python = Test.create(title: 'Python', level: 2, category_id: machine_learning.id, author: morpheus.id)

question01 = Question.create(body: 'С помощью какого тега в HTML создаются ссылки?', test_id: html.id)
question02 = Question.create(body: 'Какой из следующих операторов уменьшает целочисленное значение на единицу в Go?', test_id: golang.id)
question03 = Question.create(body: 'Какую задачу будет пытаться выполнить команда rake вызванная без аргументов?', test_id: ruby.id)
question04 = Question.create(body: 'Что выведет следующая строка кода? print ("{0:*^15".format(1234567))?', test_id: python.id)
question05 = Question.create(body: 'Какая максимальная длина имени переменной допустима в Java в соответствии со спецификацией?', test_id: java.id)

answer01_01 = Answer.create(title: '<a>', question_id: question01.id, correct: true)
answer01_02 = Answer.create(title: '<b>', question_id: question01.id, correct: false)
answer01_03 = Answer.create(title: '<p>', question_id: question01.id, correct: false)

answer02_01 = Answer.create(title: '++', question_id: question02.id, correct: false)
answer02_02 = Answer.create(title: '^', question_id: question02.id, correct: false)
answer02_03 = Answer.create(title: '--', question_id: question02.id, correct: true)

answer03_01 = Answer.create(title: 'Первую найденую задачу в файле', question_id: question03.id, correct: true)
answer03_02 = Answer.create(title: 'Первую найденную задачу в файле для которой определён метод desc', question_id: question03.id, correct: false)
answer03_03 = Answer.create(title: 'initialize', question_id: question03.id, correct: false)
answer03_04 = Answer.create(title: 'Команда rake требует указывать название задачи в обязательном порядке', question_id: question03.id, correct: false)
answer03_05 = Answer.create(title: 'default', question_id: question03.id, correct: false)

answer04_01 = Answer.create(title: '1234567', question_id: question04.id, correct: false)
answer04_02 = Answer.create(title: '****1234567****', question_id: question04.id, correct: true)
answer04_03 = Answer.create(title: 'ошибка', question_id: question04.id, correct: false)
answer04_04 = Answer.create(title: '*****1234567***', question_id: question04.id, correct: false)

answer05_01 = Answer.create(title: '256 символов', question_id: question05.id, correct: false)
answer05_02 = Answer.create(title: '1024 символов', question_id: question05.id, correct: false)
answer05_03 = Answer.create(title: '8 бит', question_id: question05.id, correct: false)
answer05_04 = Answer.create(title: 'не ограничена', question_id: question05.id, correct: true)

completed_test01 = CompletedTest.create(user_id: neo.id, test_id: ruby.id)
completed_test02 = CompletedTest.create(user_id: neo.id, test_id: html.id)
completed_test03 = CompletedTest.create(user_id: trinity.id, test_id: java.id)
completed_test04 = CompletedTest.create(user_id: morpheus.id, test_id: python.id)
