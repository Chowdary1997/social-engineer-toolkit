FROM ubuntu:latest

# Update sources and install git
RUN apt-get update -y && apt-get install -y git python3-pip

#Git configuration
RUN git config --global user.name "rajendra prasad" \
    && git config --global user.email "rajendra.daggubati@gmail.com"

# Clone SETOOLKIT
RUN git clone --depth=1 https://github.com/Chowdary1997/social-engineer-toolkit.git

# Change Working Directory
WORKDIR /social-engineer-toolkit

 # Install requirements
RUN pip3 install -r requirements.txt

# Install SETOOLKIT
RUN python3 setup.py 

ENTRYPOINT [ "./setoolkit" ]

    
