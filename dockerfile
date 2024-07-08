from ubuntu:latest

#set the working directory in the image
workdir /app

# copy the files from the host file system to the image file sysytem
copy . /app

# install the necessary packages 
run apt-get update && apt-get install -y python3 python3-pip

#set environment variables
env name world

#run a command to start the application
cmd["python3","app.py"]

