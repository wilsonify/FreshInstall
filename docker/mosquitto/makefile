
.phony: start stop restart add-user remove-user subscribe publish

start:
	UID=$UID GID=$GID docker-compose up -d

stop:
	docker-compose down

restart:
	docker-compose restart

add-user:
	docker-compose exec mosquitto mosquitto_passwd -b /mosquitto/config/password.txt thom examplepassword

remove-user:
	docker-compose exec mosquitto mosquitto_passwd -D /mosquitto/config/password.txt thom

subscribe:
	docker-compose exec mosquitto mosquitto_sub -u thom -P examplepassword -t sensor/temperature

publish:
	docker-compose exec mosquitto mosquitto_pub -u thom -P examplepassword -t sensor/temperature -m 23
