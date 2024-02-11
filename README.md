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

### Amazon Lightsail

#### Requirements
- Docker Desktop client
- AWS Account
- AWS CLI
- AWS CLI Lightsail extension


#### Method (GUI and CLI)
1. Log into the AWS Console
2. Search for Lightsail and open from the results
3. Select Containers from the left hand menu
4. Create a container service, below are example settings:
    - Power: Nano
    - Scale: 1
    - Name: python-api
5. Clone this repo locally
6. Open a terminal, ensuring you are in your newly created python-api folder as your working directory
7. Open Docker Desktop and make sure the Docker Engine is running
8. Run the following command in your terminal:
    ```
    docker build -t python-api:1.0 .
    ```
9. Follow [the instructions provided by AWS](https://docs.aws.amazon.com/en_us/lightsail/latest/userguide/amazon-lightsail-pushing-container-images.html#push-container-images) to push the image up to your Container Service in Lightsail
10. Go back into the Lightsail Containers page opened in step 3 and select the Container Service you created
11. Go to the Deployments tab and 'Create your first deployment', selecting the Stored Image you just pushed up for the deployment, port 5000 on HTTP for the Public Endpoint and / as the Healthcheck Path
12. Wait for the deployment to finish, then open the Public URL in your browser. You can check the endpoints available on the API in the hello.py file