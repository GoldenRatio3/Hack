# Commands to build

1. docker build -t hhvm-dev-env .

# Commands to run

1. docker run -it -p 8080:8080 -v ~/Documents/projects/hack:/mnt/code hhvm-dev-env       

2. docker run -it -v ~/Documents/projects/hack:/mnt/code hhvm-dev-env       

Note: first command allows us to run hhvm server for real time updates (by binding port to host), second command allows us to open a terminal to update code
