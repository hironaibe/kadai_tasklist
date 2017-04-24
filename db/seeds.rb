
Task.create(:status => 'test 1', :content => 'test content 1')
Task.create(:status => 'test 2', :content => 'test content 2')

(1..100).each do |number|
  Task.create(:status => 'test' + number.to_s, :content => 'test content' + number.to_s)
end

# あ！statusの文字数があれでvalidationにひっかかっているのかしれないので、statusのほうの文字数をいい感じに減らして？やってみてもらえませんか？


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Task.create(:content => '観察日記', :status => '2011-11-14') #OK
#Task.create(status: 'test title 1', content: 'test content 1') #NG<-why?
