BINDIR=${CURDIR}/bin

install-swag:
	GOBIN=${BINDIR} go install github.com/swaggo/swag/cmd/swag@latest

run:
	ENV CONFIG_PATH=/Users/tony/Development/score-api/internal/config/local.yml go run cmd/score-api/main.go

run-console:
	ENV CONFIG_PATH=/Users/tony/Development/score-api/internal/config/local.yml go run cmd/console/main.go

build-console:
	GOOS=linux GOARCH=amd64 go build -o console cmd/console/main.go 

run-report:
	ENV CONFIG_PATH=/Users/tony/Development/score-api/internal/config/local.yml go run cmd/report/main.go

build:
	GOOS=linux GOARCH=amd64 go build -o score-api cmd/score-api/main.go

build-docs:
	./bin/swag init -g cmd/score-api/main.go