
.phony: start stop restart add-user remove-user subscribe publish

stop:
	docker-compose down

start: stop
	UID=$UID GID=$GID docker-compose up -d

restart:
	docker-compose restart

add-user: start
	docker-compose exec mosquitto mosquitto_passwd -b /mosquitto/config/password.txt thom examplepassword

remove-user:
	docker-compose exec mosquitto mosquitto_passwd -D /mosquitto/config/password.txt thom

subscribe:
	docker-compose exec mosquitto mosquitto_sub -u thom -P examplepassword -t sensor/temperature

publish:
	docker-compose exec mosquitto mosquitto_pub -u thom -P examplepassword -t sensor/temperature -m 23
