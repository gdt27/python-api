# Experiments with a Python API

A containerised basic Python API used to test different cloud hosting methods

## Hosting methods

### Local

#### Requirements
- Docker Desktop client

#### Method
1. Install Docker Desktop (if not already) and ensure the Docker Engine is running 
2. Clone this repo
3. Open a terminal
4. Ensure the cloned python-api folder is your current working directory
5. Follow the instructions in the README.Docker.md file
    - If using virtual environment, use the below command before following the step above
    ```
    source venv/bin/activate
   ```
6. Open http://localhost:5000 in your favourite browser and check the routes in hello.py for the different endpoints available in the API