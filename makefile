up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down --remove-orphans

build:
	docker-compose -f docker-compose.yml up -d --build

rebuild: down build

restart: down up

proxy_bash:
	docker-compose -f docker-compose.yml exec proxy bash -l -c "export TERM=xterm; export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash -l"

nginx-srv-1_bash:
	docker-compose -f docker-compose.yml exec nginx-srv-1 bash -l -c "export TERM=xterm; export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash -l"

nginx-srv-2_bash:
	docker-compose -f docker-compose.yml exec nginx-srv-2 bash -l -c "export TERM=xterm; export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash -l"

php-srv-1_bash:
	docker-compose -f docker-compose.yml exec php-srv-1 bash -l -c "export TERM=xterm; export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash -l"

php-srv-2_bash:
	docker-compose -f docker-compose.yml exec php-srv-2 bash -l -c "export TERM=xterm; export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash -l"