run:
	@docker-compose up

data:
	@bundle exec rake db:migrate

test:
	@bundle exec rspec

install:
	@bundle install --jobs=20

reset:
	@bundle exec rails db:drop db:create db:migrate dev:setup

create:
	@docker-compose run --rm web bundle exec rake db:create

migrate:
	@docker-compose run --rm web rake db:migrate

seed:
	@docker-compose run --rm web rake db:seed

setup:
	@docker-compose run --rm web rake db:create db:migrate db:seed 