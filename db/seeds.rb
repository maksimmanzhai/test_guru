# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_list = [
  'Frontend',
  'Backend',
  'Machine Learning',
  'Mobile Development'
]

category_list.each do |title|
  Category.create(title: title)
end

test_list = [
  ['HTML', 0, 1],
  ['Go', 3, 1],
  ['Ruby', 2, 2],
  ['Python', 2, 3],
  ['Java', 4, 4]
]

test_list.each do |title, level, category_id|
  Test.create(title: title, level: level, category_id: category_id)
end

question_list = [
  ['С помощью какого тега в HTML создаются ссылки?', 1],
  ['Какой из следующих операторов уменьшает целочисленное значение на единицу в Go?', 2],
  ['Какую задачу будет пытаться выполнить команда rake вызванная без аргументов?', 3],
  ['Что выведет следующая строка кода? print ("{0:*^15".format(1234567))', 4],
  ['Какая максимальная длина имени переменной допустима в Java в соответствии со спецификацией?', 5]
]

question_list.each do |body, test_id|
  Question.create(body: body, test_id: test_id)
end

answer_list = [
  ['<a>', 1, true],
  ['<b>', 1, false],
  ['<p>', 1, false],

  ['++', 2, false],
  ['^', 2, false],
  ['--', 2, true],

  ['Первую найденую задачу в файле', 3, true],
  ['Первую найденную задачу в файле для которой определён метод desc', 3, false],
  ['initialize', 3, false],
  ['Команда rake требует указывать название задачи в обязательном порядке', 3, false],
  ['default', 3, false],

  ['1234567', 4, false],
  ['****1234567****', 4, true],
  ['ошибка', 4, false],
  ['*****1234567***', 4, false],

  ['256 символов', 5, false],
  ['1024 символов', 5, false],
  ['8 бит', 5, false],
  ['не ограничена', 5, true]
]

answer_list.each do |title, question_id, correct|
  Answer.create(title: title, question_id: question_id, correct: correct)
end

user_list = [
  ['Neo', 3],
  ['Trinity', 4]
]

user_list.each do |username, test_id|
  User.create(username: username, test_id: test_id)
end
