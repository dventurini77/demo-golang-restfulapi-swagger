# Start from the latest golang base image
FROM golang:latest

# Add Maintainer Info
LABEL maintainer="Davide Venturini <davide.venturini@silfi.it>"

# Set the Current Working Directory inside the container
WORKDIR /src/go-restfulapi-swagger/src

# Install ORM database libraries
RUN go get -u github.com/gorilla/mux
RUN go get -u github.com/jinzhu/gorm
RUN go get -u github.com/lib/pq
# Install Swagger API libraries 
RUN go get -u github.com/swaggo/swag/cmd/swag
RUN go get -u github.com/swaggo/http-swagger
RUN go get -u github.com/alecthomas/template

# Copy the source from the current directory to the Working Directory inside the container
COPY /src/ .

# Build Swagger documents in project dir (~/GOPATH/src/go-restfulapi-swagger normally)
#RUN swag init -g main.go 
# Build the Go app
#RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080
USER 1001

# Command to run the executable
#CMD ["./main"]