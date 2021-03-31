# demo-golang-restfulapi-swagger
Esempio di creazione di restful API basate su tecnologia ORM e standard Swagger

localhost:8080/swagger/index.html

localhost:8080/api/users

localhost:8080/api/users/{id}

# Install ORM database libraries

$ go get -u github.com/gorilla/mux

$ go get -u github.com/jinzhu/gorm

$ go get -u github.com/lib/pq


# Install Swagger API libraries 

$ go get -u github.com/swaggo/swag/cmd/swag

$ go get -u github.com/swaggo/http-swagger

$ go get -u github.com/alecthomas/template


# Build Swagger documents in project dir (~/GOPATH/src/go-restfulapi-swagger normally)

$ swag init -g main.go


# Build the Go app

$ go build -o main 
