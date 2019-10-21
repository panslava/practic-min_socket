build:
	docker build -t panslava/practicmin_socket:latest .

start:
	docker run -d -p 65432:65432 panslava/practicmin_socket:latest > .docker_container_id

stop:
	cat .docker_container_id | xargs docker stop

clean:
	rm .docker_container_id