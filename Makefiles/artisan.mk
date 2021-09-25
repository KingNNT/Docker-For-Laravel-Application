artisan-storage-link:
	- docker-compose -f docker-compose.development.yml run --rm artisan storage:link
artisan-migrate:
	- docker-compose -f docker-compose.development.yml run --rm artisan migrate
artisan-migrate-fresh:
	- docker-compose -f docker-compose.development.yml run --rm artisan migrate:fresh
artisan-migrate-fresh-seeder:
	- docker-compose -f docker-compose.development.yml run --rm artisan migrate:fresh --seed
artisan-db-seeder:
	- docker-compose -f docker-compose.development.yml run --rm artisan db:seed
artisan-optimize-clear:
	- docker-compose -f docker-compose.development.yml run --rm artisan optimize:clear
artisan-route-list:
	- docker-compose -f docker-compose.development.yml run --rm artisan route:list
artisan-tinker:
	- docker-compose -f docker-compose.development.yml run --rm artisan tinker
artisan-config-cache:
	- docker-compose -f docker-compose.development.yml run --rm artisan config:cache
artisan-route-cache:
	- docker-compose -f docker-compose.development.yml run --rm artisan route:cache
artisan-view-cache:
	- docker-compose -f docker-compose.development.yml run --rm artisan view:cache
artisan-key-generate:
	- docker-compose -f docker-compose.development.yml run --rm artisan key:generate