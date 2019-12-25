# Welcome to docbot

This is the chatbot backend server for nlpia-bot in a Docker container.

## Start the service:

    make up
    
You should now see the landing page at http://localhost:8000/. 
    
When you are done you can bring the system down with:

    make down
    
To test the project run:

    make test
    
To build the app do:

    make build VERSION=0.0.0
