run:
#	docker run -d -p 3630:3690 --env-file ./config/.env  --rm --name myapp myimage:env
	docker run -d -p 3630:3636 -v logs:/app/data --rm --name myapp myimage:volumes
run-dev:
	docker run -d -p 3630:3636 -v "C:\Programming\WebStorm\JavaScript\logs-app":/app -v /app/node_modules  -v logs:/app/data --rm --name myapp myimage:volumes
stop:
	docker stop myapp