# Monolist [モノリスト]

TechAcademyオンラインブートキャンプの教材ファイル。  
使い方は学習システム内のレッスンを参照ください。

## Demo

https://mono-list.herokuapp.com/

## Licence

This software is released under the MIT License, see [LICENSE.md](https://github.com/techacademy-jp/monolist/blob/master/LICENSE.md)

## Self Development Tips
### git
```
$ git clone git@github.com-th7:tommyheavenly7/message_board.git
$ cd message_board
$ git config --local user.name "Tomo Lance Miamoto"
$ git config --local user.email "lancelot@tommyheavenly7.com"
```
  - [Changing a remote's URL](https://help.github.com/articles/changing-a-remote-s-url/)
  - [同一端末で、複数のGitHubアカウントを使い分ける方法](https://github.com/youkinjoh/TrainingWebSocket/wiki/%E5%90%8C%E4%B8%80%E7%AB%AF%E6%9C%AB%E3%81%A7%E3%80%81%E8%A4%87%E6%95%B0%E3%81%AEGitHub%E3%82%A2%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E3%82%92%E4%BD%BF%E3%81%84%E5%88%86%E3%81%91%E3%82%8B%E6%96%B9%E6%B3%950)

### untrack already checked-in directories' content
```
$ git rm -r --cached monolist/vendor
```
  - [Ignoring files](https://help.github.com/articles/ignoring-files/)

### vagrant
```
$ sudo yum install kernel-devel -y
$ sudo /etc/init.d/vboxadd setup
```
  - [Vagrant error “Failed to mount folders in Linux guest” after halt or reload](http://stackoverflow.com/questions/27992354/vagrant-error-failed-to-mount-folders-in-linux-guest-after-halt-or-reload/27992355#27992355)
  - [Installing PostgreSQL 9.4 And phpPgAdmin In CentOS 7/6.5/6.4](http://www.unixmen.com/postgresql-9-4-released-install-centos-7/)

### heroku
```
$ heroku run rake db:migrate --app monolist-th7
```
### rails
#### create a new project
```
# in case, you'd like to use mysql
$ rails new microposts -B -d mysql
```
#### create databases
You need to edit *config/database.yml* in advance.
```
$ rake db:create
$ rake db:migrate

# SQL for skipping the migration
> insert into schema_migrations (version) values ('20150919132850');
```
#### alter table
```
$ rails generate migration change_detail_page_url_format_in_items
```
  - [Difference between string and text in rails?](http://stackoverflow.com/questions/3354330/difference-between-string-and-text-in-rails)
  - [Change a column type from Date to DateTime during ROR migration](http://stackoverflow.com/questions/5191405/change-a-column-type-from-date-to-datetime-during-ror-migration)

#### routes
```
$ rake routes --trace
```
  - [Rails Routing from the Outside In](http://guides.rubyonrails.org/routing.html)

#### boot the rails server
```
$ rails s -p 3000 -b lancelot.vm
```
### debugging
```
binding.pry
```
### bootstrap
  - [twbs/bootstrap-sass](https://github.com/twbs/bootstrap-sass)

### references
  - [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#blockquotes)
  - [Ruby on Rails Guides (v4.2.4)](http://guides.rubyonrails.org/)
  - [Active Record Validations - Using a Symbol with :if and :unless](http://guides.rubyonrails.org/active_record_validations.html#using-a-symbol-with-if-and-unless)
  - [Active Record Migrations - Creating a Migration](http://guides.rubyonrails.org/active_record_migrations.html#creating-a-migration)
