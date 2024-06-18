FROM golang:alpine

#Set directory in container
WORKDIR $GOPATH/src/jose/firstApp-minikube

#Copy from currebt directory to PWD into container
COPY ..

#Install the package
RUN go install -v ./...

# This container exposes port 8080 to the otuside world
EXPOSE 8080

# Run the executable  
CMD ["firstApp-minikube"]
