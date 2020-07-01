ENV ?= development
-include .env
-include .env.${ENV}
export

start:
	mix phx.server

db:
	mix ecto.create

init:
	mix phx.new backend --app dood --module Dood --no-html --no-webpack --binary-id

dashboard:
	open localhost:4000/dashboard

up:
	@docker-compose up -d

down:
	@docker-compose down

clean:
	@rm -rf ./tmp

routes:
	@mix phx.routes
