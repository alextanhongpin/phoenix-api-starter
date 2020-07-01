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
